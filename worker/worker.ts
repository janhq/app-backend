export interface Env {
  HASURA_ADMIN_API_KEY: string;
  LLM_INFERENCE_ENDPOINT: string;
  INFERENCE_API_KEY: string;
  HASURA_GRAPHQL_ENGINE_ENDPOINT: string;
}

export default {
  async fetch(request: Request, env: Env) {
    return handleRequest(env, request);
  },
};

async function handleRequest(env: Env, request: Request) {
  const apiurl = env.LLM_INFERENCE_ENDPOINT;
  const requestBody = await request.json();

  const messageBody = {
    id: requestBody.event.data.new.id,
    content: requestBody.event.data.new.content,
    messages: requestBody.event.data.new.prompt_cache,
  };

  if (messageBody.content !== "") {
    return new Response(JSON.stringify({ status: "success" }), {
      status: 200,
      statusText: "success",
    });
  }

  const llmRequestBody = {
    messages: messageBody.messages,
    stream: true,
    model: "gpt-3.5-turbo",
    max_tokens: 500,
  };

  const init = {
    body: JSON.stringify(llmRequestBody),
    headers: {
      "Content-Type": "application/json",
      Accept: "text/event-stream",
      Authorization: "Access-Control-Allow-Origin: *",
      "api-key": env.INFERENCE_API_KEY,
    },
    method: "POST",
  };
  return fetch(apiurl, init)
    .then((res) => res.body?.getReader())
    .then(async (reader) => {
      if (!reader) {
        console.error("Error: fail to read data from response");
        return;
      }
      let answer = "";
      while (true) {
        const { done, value } = await reader.read();
        if (done) {
          break;
        }

        const textDecoder = new TextDecoder("utf-8");
        const chunk = textDecoder.decode(value);

        let deltaText = "";
        for (const line of chunk.split("\n")) {
          const trimmedLine = line.trim();
          if (!trimmedLine || trimmedLine === "data: [DONE]") {
            continue;
          }

          const json = trimmedLine.replace("data: ", "");
          try {
            const obj = JSON.parse(json);
            const content = obj.choices[0].delta.content;
            if (content) deltaText = deltaText.concat(content);
          } catch (e) {}
        }

        answer = answer + deltaText;

        const qv = { id: messageBody.id, content: answer, prompt_cache: null };

        await fetch(env.HASURA_GRAPHQL_ENGINE_ENDPOINT + "/v1/graphql", {
          method: "POST",
          body: JSON.stringify({ query: query, variables: qv }),
          headers: {
            "Content-Type": "application/json",
            "x-hasura-admin-secret": env.HASURA_ADMIN_API_KEY,
          },
        })
          .then((res) => res.json())
          .then((json) => console.log(json))
          .catch((error) => {
            console.error(error);
          });
      }

      return new Response(JSON.stringify({ status: "success" }), {
        status: 200,
        statusText: "success",
      });
    });
}

const query = `
  mutation chatCompletions($id: uuid = "", $content: String = "", $prompt_cache: jsonb) {
    update_messages_by_pk(pk_columns: {id: $id}, _set: {content: $content, prompt_cache: $prompt_cache}) {
      id
      content
    }
  }
`;
