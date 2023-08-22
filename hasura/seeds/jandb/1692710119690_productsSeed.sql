SET check_function_bodies = false;
INSERT INTO public.products ("slug", "name", "nsfw", "image_url", "description", "long_description", "technical_description", "author", "version", "source_url", "inputs", "outputs", "greeting") VALUES
('hermes', 'Nous-Hermes', 't', 'https://static-assets.jan.ai/hermes.jpg', 'Conversational AI with long responses and low hallucination rate.', 'Nous-Hermes is an intelligent Conversational AI that generates engaging stories and provides language learning assistance. Ask questions, summarize text, ideate for content creation, search definitions, proofread, or raise your knowledge in different areas. Whether you want to create a fun series of Tweets from a famous person or write a fictional story with your favorite characters, Nous-Hermes will provide all the essentials.', 'Nous-Hermes-13b is a language model developed by Nous Research in collaboration with Teknium, Karan4D, Huemin Art, and Redmond AI. The model is a fine-tuned version of the Llama 13b, rivaling GPT-3.5-turbo in performance. It was trained on a diverse data set comprising over 300,000 instructions, synthesized by GPT-4 outputs from various sources, including GPTeacher, Nous Instruct, CodeAlpaca, and Unnatural Instructions. The model''s unique features include longer response lengths, lower hallucination rates, and no OpenAI censorship mechanisms. 
Training took place on an 8x a100 80GB DGX machine with a 2000 sequence length for over 50 hours. The model is appreciated for its capacity to understand and follow complex instructions, making it suitable for a range of language tasks, from text generation to more sophisticated roles. 
The Nous-Hermes-13b model is compatible with the Alpaca prompt format, and it''s currently available for download on Hugging Face. The team behind the model has plans to convert the model to GGML and GPTQ 4bit quantizations, with ongoing work on a comprehensive benchmark. The model shows excellent benchmark results and ranks first on ARC-c, ARC-e, Hellaswag, and OpenBookQA tasks when compared to GPT4all''s benchmarking list.', '', 'Nous-Hermes-13B-GGML', 'https://huggingface.co/NousResearch/Nous-Hermes-13b', '{"body": [{"name": "messages", "type": "array", "items": [{"type": "object", "properties": [{"name": "role", "type": "string", "example": "system", "description": "Defines the role of the message."}, {"name": "content", "type": "string", "example": "Hello, world!", "description": "Contains the content of the message."}]}], "description": "An array of messages, each containing a role and content. The latest message is always at the end of the array."}, {"name": "stream", "type": "boolean", "example": true, "description": "Indicates whether the client wants to keep the connection open for streaming."}, {"name": "max_tokens", "type": "integer", "example": 500, "description": "Defines the maximum number of tokens that the client wants to receive."}], "slug": "llm", "headers": {"accept": "text/event-stream", "content-type": "application/json"}}', '{"slug": "llm", "type": "object", "properties": [{"name": "id", "type": "string", "example": "chatcmpl-4c4e5eb5-bf53-4dbc-9136-1cf69fc5fd7c", "description": "The unique identifier of the chat completion chunk."}, {"name": "model", "type": "string", "example": "gpt-3.5-turbo", "description": "The name of the GPT model used to generate the completion."}, {"name": "created", "type": "integer", "example": 1692169988, "description": "The Unix timestamp representing the time when the completion was generated."}, {"name": "object", "type": "string", "example": "chat.completion.chunk", "description": "A string indicating the type of the chat completion chunk."}, {"name": "choices", "type": "array", "items": [{"type": "object", "properties": [{"name": "index", "type": "integer", "example": 0, "description": "The index of the choice made by the GPT model."}, {"name": "delta", "type": "object", "properties": [{"name": "content", "type": "string", "example": "What", "description": "The content generated by the GPT model."}], "description": "A JSON object containing the content generated by the GPT model."}, {"name": "finish_reason", "type": "string", "example": null, "description": "A string indicating why the GPT model stopped generating content."}]}], "description": "An array containing the choices made by the GPT model to generate the completion."}], "description": "A JSON object representing a chat completion chunk."}', '👋I’m a versatile AI trained on a wide range of topics, here to answer your questions about the universe. What are you curious about today?'),
('openjourney', 'OpenJourney', 't', 'https://static-assets.jan.ai/openjourney.jpg', 'Openjourney is a fine-tuned Stable Diffusion model that is trained on images created with Midjourney. It tries to achieve the style of Midjourney images.', 'Openjourney is a fine-tuned Stable Diffusion model that is trained on images created with Midjourney. It tries to achieve the style of Midjourney images.', 'Trained on +124k Midjourney v4 images, by PromptHero. Trained on Stable Diffusion v1.5 using +124000 images, 12400 steps, 4 epochs +32 training hours.', '', '4.0.0', 'https://civitai.com/models/86/openjourney', '{"body": [{"name": "prompt", "type": "string", "description": "Input prompt"}, {"name": "negative_prompt", "type": "string", "description": "Specify things to not see in the output"}, {"name": "width", "type": "integer", "description": "Width of output image. Maximum size is 1024x768 or 768x1024 because of memory limits"}, {"name": "height", "type": "integer", "description": "Height of output image. Maximum size is 1024x768 or 768x1024 because of memory limits"}, {"name": "num_outputs", "type": "integer", "description": "Number of images to output. (minimum: 1; maximum: 4)"}, {"name": "num_inference_steps", "type": "integer", "description": "Number of denoising steps (minimum: 1; maximum: 500)"}, {"name": "guidance_scale", "type": "integer", "description": "Scale for classifier-free guidance (minimum: 1; maximum: 20)"}], "slug": "sd", "headers": {"accept": "application/json", "content-type": "multipart/form-data"}}', '{"slug": "sd", "type": "object", "properties": [{"name": "url", "type": "string", "description": "The unique identifier of the chat completion chunk."}], "description": "URL result image."}', 'Hello there 👋'),
('dreamshaper', 'Dreamshaper', 't', 'https://static-assets.jan.ai/dreamshaper-thumbnail.jpg', 'DreamShaper is an AI model that excels at generating a wide range of stunning artwork and art styles. Built on the powerful Stable Diffusion (SD 1.5) model, DreamShaper has been carefully fine-tuned using a diverse dataset of images from other AI models and contributors. 
With DreamShaper, the creative possibilities are limitless. Whether you''re looking to create vibrant anime illustrations, breathtaking landscapes, or captivating character designs, this AI model has got you covered. 
You can bring your ideas to life by generating photorealistic portraits or mimicking the style of traditional paintings. DreamShaper is equally adept at crafting stunning backgrounds, designing anime-style characters, or even recreating the nostalgic pixelated graphics of old-style video games. Let your imagination soar as you create fantastic computer graphic art, superheroes, or even illustrations for web design.', 'DreamShaper is an AI model that excels at generating a wide range of stunning artwork and art styles. Built on the powerful Stable Diffusion (SD 1.5) model, DreamShaper has been carefully fine-tuned using a diverse dataset of images from other AI models and contributors. 
With DreamShaper, the creative possibilities are limitless. Whether you''re looking to create vibrant anime illustrations, breathtaking landscapes, or captivating character designs, this AI model has got you covered. 
You can bring your ideas to life by generating photorealistic portraits or mimicking the style of traditional paintings. DreamShaper is equally adept at crafting stunning backgrounds, designing anime-style characters, or even recreating the nostalgic pixelated graphics of old-style video games. Let your imagination soar as you create fantastic computer graphic art, superheroes, or even illustrations for web design.', 'Version 6 adds more lora support and more style in general. It should also be better at generating directly at 1024 height (but be careful with it). 6.x are all improvements.', '', '6.0.0', 'https://civitai.com/models/4384/dreamshaper', '{"body": [{"name": "prompt", "type": "string", "description": "Input prompt"}, {"name": "negative_prompt", "type": "string", "description": "Specify things to not see in the output"}, {"name": "width", "type": "integer", "description": "Width of output image. Maximum size is 1024x768 or 768x1024 because of memory limits"}, {"name": "height", "type": "integer", "description": "Height of output image. Maximum size is 1024x768 or 768x1024 because of memory limits"}, {"name": "num_outputs", "type": "integer", "description": "Number of images to output. (minimum: 1; maximum: 4)"}, {"name": "num_inference_steps", "type": "integer", "description": "Number of denoising steps (minimum: 1; maximum: 500)"}, {"name": "guidance_scale", "type": "integer", "description": "Scale for classifier-free guidance (minimum: 1; maximum: 20)"}], "slug": "sd", "headers": {"accept": "application/json", "content-type": "multipart/form-data"}}', '{"slug": "sd", "type": "object", "properties": [{"name": "url", "type": "string", "description": "The unique identifier of the chat completion chunk."}], "description": "URL result image."}', 'Hello there 👋'),
('guanaco', 'Guanaco', 't', 'https://static-assets.jan.ai/guanaco.jpg', 'Conversational AI with a quirky personality', 'Guanaco is an advanced instruction-following language model built on Meta''s LLaMA 7B model. 
It’s your personal intelligent assistant that can handle multiple tasks to make your life easier and more enjoyable.
Need assistance writing an essay? Guanaco can provide you with ideas and suggestions. 
Want to know more about historical events? Just ask Guanaco to assume the role of a historical figure and engage in a conversation. 
From answering questions to generating engaging stories, Guanaco can be your virtual assistant for productivity, education, or simply having fun.', 'Guanaco is an instruction-following language model built on Meta''s LLaMA 7B model.
It incorporates an additional 534K+ entries to the initial 52K dataset from the Alpaca model, covering multiple languages including English, Simplified Chinese, Traditional Chinese (Taiwan), Traditional Chinese (Hong Kong), Japanese, Deutsch, and various linguistic and grammatical tasks.
The Guanaco Dataset and model weights have been made publicly accessible to foster openness and replicability in research.', 'JosephusCheung, with contributions from KBlueLeaf', 'Guanaco-7B-GGML', 'https://huggingface.co/JosephusCheung/Guanaco', '{"body": [{"name": "messages", "type": "array", "items": [{"type": "object", "properties": [{"name": "role", "type": "string", "example": "system", "description": "Defines the role of the message."}, {"name": "content", "type": "string", "example": "Hello, world!", "description": "Contains the content of the message."}]}], "description": "An array of messages, each containing a role and content. The latest message is always at the end of the array."}, {"name": "stream", "type": "boolean", "example": true, "description": "Indicates whether the client wants to keep the connection open for streaming."}, {"name": "max_tokens", "type": "integer", "example": 500, "description": "Defines the maximum number of tokens that the client wants to receive."}], "slug": "llm", "headers": {"accept": "text/event-stream", "content-type": "application/json"}}', '{"slug": "llm", "type": "object", "properties": [{"name": "id", "type": "string", "example": "chatcmpl-4c4e5eb5-bf53-4dbc-9136-1cf69fc5fd7c", "description": "The unique identifier of the chat completion chunk."}, {"name": "model", "type": "string", "example": "gpt-3.5-turbo", "description": "The name of the GPT model used to generate the completion."}, {"name": "created", "type": "integer", "example": 1692169988, "description": "The Unix timestamp representing the time when the completion was generated."}, {"name": "object", "type": "string", "example": "chat.completion.chunk", "description": "A string indicating the type of the chat completion chunk."}, {"name": "choices", "type": "array", "items": [{"type": "object", "properties": [{"name": "index", "type": "integer", "example": 0, "description": "The index of the choice made by the GPT model."}, {"name": "delta", "type": "object", "properties": [{"name": "content", "type": "string", "example": "What", "description": "The content generated by the GPT model."}], "description": "A JSON object containing the content generated by the GPT model."}, {"name": "finish_reason", "type": "string", "example": null, "description": "A string indicating why the GPT model stopped generating content."}]}], "description": "An array containing the choices made by the GPT model to generate the completion."}], "description": "A JSON object representing a chat completion chunk."}', '👋 I’m an friendly AI trained on wide range of topics, able to provide informative answers, generate creative content and more. What are you curious about today?'),
('openai', 'ChatGPT', 't', 'https://static-assets.jan.ai/openai-icon.jpg', 'Powerful chatbot from OpenAI', 'ChatGPT AI 3.5 is great at understanding and generating language, making it useful for many things. It can have conversations, answer questions, and give explanations. You can ask it for information on different topics, and it can summarize long texts for you. 
It''s also good at helping with writing. It can give you ideas, suggest things to write about, and even create stories. So, if you need quick answers, help with understanding text, or ideas for writing, ChatGPT is a handy tool to have.', 'GPT-3.5, also known as GPT-3.5-turbo, is an advanced language model developed by OpenAI, based on the transformer architecture. As an iteration of the GPT-3 model, GPT-3.5 features enhanced capabilities in text generation and understanding, making it more efficient and accurate in tasks such as natural language understanding, translation, and text completion. GPT-3.5 is trained on a vast amount of text data from the internet, enabling it to generate human-like text based on the input provided. Its architecture is composed of a large number of transformer layers, which allows it to comprehend the context of input text and generate coherent and contextually appropriate responses. The model operates by taking a sequence of tokens as input, processing them through its multiple layers to determine the probability of the next token in the sequence, and then generating that next token. This process is repeated until a specified token limit is reached or an end-of-sequence token is generated. The generated tokens are then combined to form the output text. GPT-3.5 is fine-tuned on a range of tasks to enhance its performance. Fine-tuning is a process in which a pre-trained model is further trained on a specific task to improve its accuracy. It involves slightly adjusting the weights of the model learned during the initial training phase to better suit the specific task. The power of GPT-3.5 lies in its ability to generate high-quality text that closely resembles human writing, its versatility in handling various natural language processing tasks, and its ability to learn from the input data without the need for explicit task-specific training data.', 'OpenAI', 'GPT-3.5', 'https://platform.openai.com/docs/models/gpt-3-5', '{"body": [{"name": "messages", "type": "array", "items": [{"type": "object", "properties": [{"name": "role", "type": "string", "example": "system", "description": "Defines the role of the message."}, {"name": "content", "type": "string", "example": "Hello, world!", "description": "Contains the content of the message."}]}], "description": "An array of messages, each containing a role and content. The latest message is always at the end of the array."}, {"name": "stream", "type": "boolean", "example": true, "description": "Indicates whether the client wants to keep the connection open for streaming."}, {"name": "max_tokens", "type": "integer", "example": 500, "description": "Defines the maximum number of tokens that the client wants to receive."}], "slug": "llm", "headers": {"accept": "text/event-stream", "content-type": "application/json"}}', '{"slug": "llm", "type": "object", "properties": [{"name": "id", "type": "string", "example": "chatcmpl-4c4e5eb5-bf53-4dbc-9136-1cf69fc5fd7c", "description": "The unique identifier of the chat completion chunk."}, {"name": "model", "type": "string", "example": "gpt-3.5-turbo", "description": "The name of the GPT model used to generate the completion."}, {"name": "created", "type": "integer", "example": 1692169988, "description": "The Unix timestamp representing the time when the completion was generated."}, {"name": "object", "type": "string", "example": "chat.completion.chunk", "description": "A string indicating the type of the chat completion chunk."}, {"name": "choices", "type": "array", "items": [{"type": "object", "properties": [{"name": "index", "type": "integer", "example": 0, "description": "The index of the choice made by the GPT model."}, {"name": "delta", "type": "object", "properties": [{"name": "content", "type": "string", "example": "What", "description": "The content generated by the GPT model."}], "description": "A JSON object containing the content generated by the GPT model."}, {"name": "finish_reason", "type": "string", "example": null, "description": "A string indicating why the GPT model stopped generating content."}]}], "description": "An array containing the choices made by the GPT model to generate the completion."}], "description": "A JSON object representing a chat completion chunk."}', 'Welcome! I''m ChatGPT, your friendly AI assistant here to help you. Whether you have questions, need assistance, or just want to have a chat, I''m here for you. Feel free to ask me anything and let''s explore together.'),
('controlnet', 'ControlNet', 't', 'https://static-assets.jan.ai/controlnet.jpg', 'ControlNet is a Stable Diffusion model that lets you copy compositions or human poses from a reference image', 'ControlNet is a Stable Diffusion model that lets you copy compositions or human poses from a reference image.
Seasoned Stable Diffusion users know how hard it is to generate the exact composition you want. The images are kind of random. All you can do is play the number game: Generate a large number of images and pick one you like.
With ControlNet, Stable Diffusion users finally have a way to control where the subjects are and how they look — with precision!', 'This model is ControlNet adapting Stable Diffusion to generate images that have the same structure as an input image of your choosing, using canny edge detection. The model is trained with a canny edge detector (with random thresholds) to obtain 3M edge-image- caption pairs from the internet. The model is trained with 600 GPU-hours with Nvidia A100 80G. The base model is Stable Diffusion 1.5', 'Zhang, Lvmin and Agrawala, Maneesh', '', 'https://huggingface.co/lllyasviel/sd-controlnet-canny', '{"body": [{"name": "image", "type": "file", "description": "Input image"}, {"name": "prompt", "type": "string", "description": "Input prompt"}, {"name": "negative_prompt", "type": "string", "description": "Specify things to not see in the output"}, {"name": "width", "type": "integer", "description": "Width of output image. Maximum size is 1024x768 or 768x1024 because of memory limits"}, {"name": "height", "type": "integer", "description": "Height of output image. Maximum size is 1024x768 or 768x1024 because of memory limits"}, {"name": "num_outputs", "type": "integer", "description": "Number of images to output. (minimum: 1; maximum: 4)"}, {"name": "num_inference_steps", "type": "integer", "description": "Number of denoising steps (minimum: 1; maximum: 500)"}, {"name": "guidance_scale", "type": "float", "description": "Scale for classifier-free guidance (minimum: 1; maximum: 20)"}], "slug": "controlnet", "headers": {"accept": "application/json", "content-type": "multipart/form-data"}}', '{"slug": "sd", "type": "object", "properties": [{"name": "url", "type": "string", "description": "The unique identifier of the chat completion chunk."}], "description": "URL result image."}', 'Hello there 👋'),
('airoboros', 'Airoboros', 't', 'https://static-assets.jan.ai/airoboros.jpg', 'Conversational AI with a ''prim and proper'' personality', 'Introducing Airoboros-13b, an advanced conversational AI model trained with synthetic data. 
Whether you need quick and precise answers to general or specific questions, Airoboros delivers instant information across various topics. If you''re faced with lengthy articles or texts, Airoboros can summarize them into concise and easily understandable summaries, saving you time and effort.', 'Airoboros-13b is a fine-tuned, artificial intelligence model developed by Jon Durbin, employing the capabilities of a 13 billion parameter Language Learning and Multimodal Application (LlaMa) framework. This model relies on a unique dataset created from synthetic instructions generated by the ChatGPT AI model. 
The author used a ''jailbreak'' prompt to generate the synthetic training data for Airoboros-13b. Despite the emergence of issues related to mathematical extrapolation, closed question-answering, and coding, additional rounds of fine-tuning using synthetic instructions targeted at these problem areas led to substantial improvements. 
The fine-tuning of Airoboros-13b was executed using the FastChat module. The procedure was implemented on eight Nvidia 80GB A100s over an approximate period of 40 hours. The process involved complex configurations such as setting a three-epoch training phase, 20-unit batch sizes for training and evaluation, a ''steps'' evaluation strategy, and a learning rate of 2e-5. The model was also configured with gradient accumulation steps, gradient checkpointing, and a lazy preprocessing setup. It operates in conjunction with the FastChat/vicuna prompt format, delivering comprehensive and courteous responses.', 'Jon Durbin', 'Airoboros-13B-GGML', 'https://huggingface.co/TheBloke/airoboros-13B-gpt4-1.4-GGML', '{"body": [{"name": "messages", "type": "array", "items": [{"type": "object", "properties": [{"name": "role", "type": "string", "example": "system", "description": "Defines the role of the message."}, {"name": "content", "type": "string", "example": "Hello, world!", "description": "Contains the content of the message."}]}], "description": "An array of messages, each containing a role and content. The latest message is always at the end of the array."}, {"name": "stream", "type": "boolean", "example": true, "description": "Indicates whether the client wants to keep the connection open for streaming."}, {"name": "max_tokens", "type": "integer", "example": 500, "description": "Defines the maximum number of tokens that the client wants to receive."}], "slug": "llm", "headers": {"accept": "text/event-stream", "content-type": "application/json"}}', '{"slug": "llm", "type": "object", "properties": [{"name": "id", "type": "string", "example": "chatcmpl-4c4e5eb5-bf53-4dbc-9136-1cf69fc5fd7c", "description": "The unique identifier of the chat completion chunk."}, {"name": "model", "type": "string", "example": "gpt-3.5-turbo", "description": "The name of the GPT model used to generate the completion."}, {"name": "created", "type": "integer", "example": 1692169988, "description": "The Unix timestamp representing the time when the completion was generated."}, {"name": "object", "type": "string", "example": "chat.completion.chunk", "description": "A string indicating the type of the chat completion chunk."}, {"name": "choices", "type": "array", "items": [{"type": "object", "properties": [{"name": "index", "type": "integer", "example": 0, "description": "The index of the choice made by the GPT model."}, {"name": "delta", "type": "object", "properties": [{"name": "content", "type": "string", "example": "What", "description": "The content generated by the GPT model."}], "description": "A JSON object containing the content generated by the GPT model."}, {"name": "finish_reason", "type": "string", "example": null, "description": "A string indicating why the GPT model stopped generating content."}]}], "description": "An array containing the choices made by the GPT model to generate the completion."}], "description": "A JSON object representing a chat completion chunk."}', '👋I’m a versatile AI trained on a wide range of topics, here to answer your questions about the universe. What are you curious about today?'),
('meina-mix', 'Meina Mix', 't', 'https://static-assets.jan.ai/meinamix.jpg', 'MeinaMix objective is to be able to do good art with little prompting', 'MeinaMix objective is to be able to do good art with little prompting', '', '', '', '', '{"body": [{"name": "prompt", "type": "string", "description": "Input prompt"}, {"name": "negative_prompt", "type": "string", "description": "Specify things to not see in the output"}, {"name": "width", "type": "integer", "description": "Width of output image. Maximum size is 1024x768 or 768x1024 because of memory limits"}, {"name": "height", "type": "integer", "description": "Height of output image. Maximum size is 1024x768 or 768x1024 because of memory limits"}, {"name": "num_outputs", "type": "integer", "description": "Number of images to output. (minimum: 1; maximum: 4)"}, {"name": "num_inference_steps", "type": "integer", "description": "Number of denoising steps (minimum: 1; maximum: 500)"}, {"name": "guidance_scale", "type": "integer", "description": "Scale for classifier-free guidance (minimum: 1; maximum: 20)"}], "slug": "sd", "headers": {"accept": "application/json", "content-type": "multipart/form-data"}}', '{"slug": "sd", "type": "object", "properties": [{"name": "url", "type": "string", "description": "The unique identifier of the chat completion chunk."}], "description": "URL result image."}', 'Hello there 👋'),
('wizardvicuna', 'Wizard-Vicuna', 't', 'https://static-assets.jan.ai/wizard-vicuna.jpg', 'Conversational AI with strong reasoning abilities', 'Introducing Wizard Vicuna, an innovative AI model that combines the strengths of WizardLM and VicunaLM to offer an exceptional conversational experience. By leveraging WizardLM''s in-depth dataset handling and VicunaLM''s multi-round conversation capabilities, Wizard VicunaLM pushes the boundaries of conversational AI. 
Wizard VicunaLM expands on single problems by transforming them into rich and continuous conversations. Engage in engaging and thought-provoking conversations, ask questions, brainstorm ideas for content creation, summarize text, search definitions, proofread, and broaden your knowledge across different areas. Additionally, Wizard VicunaLM has demonstrated enhanced coding skills, making it a valuable resource for coding-related inquiries and challenges.', 'WizardVicunaLM is a novel model that fuses the concepts of two AI models: WizardLM and VicunaLM. It aims to handle the dataset on a more in-depth and broader scale, a characteristic inspired by the WizardLM model. Additionally, it seeks to tackle the constraints of single-turn dialogues by incorporating multi-turn conversations, a feature borrowed from VicunaLM. 
The model employs an innovative approach by transforming a single command into a rich, multi-layered conversation. This is achieved by expanding various topics using the 7,000 conversations created by WizardLM. However, unlike the WizardLM model which follows an instruction format, WizardVicunaLM leverages a continuous conversation format. This begins with an instruction from WizardLM, followed by an expansion into diverse areas within the same conversation using ChatGPT 3.5. 
After establishing the conversation format, the model employs Vicuna''s fine-tuning process to refine its capabilities. The training procedure for the model involved the use of 8 A100 GPUs operating for 35 hours. Consequently, WizardVicunaLM demonstrates a notable performance enhancement, showing approximately a 7% improvement over the VicunaLM model. 
Regarding licensing, WizardVicunaLM is licensed under the LLaMA model, while the dataset is subject to the terms of OpenAI, given its utilization of ChatGPT.', 'June Lee', 'Wizard-Vicuna-13B-Uncensored-GGML', 'https://huggingface.co/TheBloke/Wizard-Vicuna-13B-Uncensored-GGML', '{"body": [{"name": "messages", "type": "array", "items": [{"type": "object", "properties": [{"name": "role", "type": "string", "example": "system", "description": "Defines the role of the message."}, {"name": "content", "type": "string", "example": "Hello, world!", "description": "Contains the content of the message."}]}], "description": "An array of messages, each containing a role and content. The latest message is always at the end of the array."}, {"name": "stream", "type": "boolean", "example": true, "description": "Indicates whether the client wants to keep the connection open for streaming."}, {"name": "max_tokens", "type": "integer", "example": 500, "description": "Defines the maximum number of tokens that the client wants to receive."}], "slug": "llm", "headers": {"accept": "text/event-stream", "content-type": "application/json"}}', '{"slug": "llm", "type": "object", "properties": [{"name": "id", "type": "string", "example": "chatcmpl-4c4e5eb5-bf53-4dbc-9136-1cf69fc5fd7c", "description": "The unique identifier of the chat completion chunk."}, {"name": "model", "type": "string", "example": "gpt-3.5-turbo", "description": "The name of the GPT model used to generate the completion."}, {"name": "created", "type": "integer", "example": 1692169988, "description": "The Unix timestamp representing the time when the completion was generated."}, {"name": "object", "type": "string", "example": "chat.completion.chunk", "description": "A string indicating the type of the chat completion chunk."}, {"name": "choices", "type": "array", "items": [{"type": "object", "properties": [{"name": "index", "type": "integer", "example": 0, "description": "The index of the choice made by the GPT model."}, {"name": "delta", "type": "object", "properties": [{"name": "content", "type": "string", "example": "What", "description": "The content generated by the GPT model."}], "description": "A JSON object containing the content generated by the GPT model."}, {"name": "finish_reason", "type": "string", "example": null, "description": "A string indicating why the GPT model stopped generating content."}]}], "description": "An array containing the choices made by the GPT model to generate the completion."}], "description": "A JSON object representing a chat completion chunk."}', '👋Need help with learning a new topic, summarizing information or handling writing tasks? I’m here to help.');