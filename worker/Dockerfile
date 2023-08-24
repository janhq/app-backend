# Dockerfile

# alpine does not work with wrangler
FROM node 

WORKDIR /

RUN npm install -g wrangler

COPY ./worker /

EXPOSE 8787

CMD ["wrangler", "dev"]