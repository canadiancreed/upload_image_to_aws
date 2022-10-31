FROM node:19

EXPOSE 8080

WORKDIR /node-app

COPY package.json package.json

ENV NPM_CONFIG_LOGLEVEL info

RUN npm install

COPY . .

CMD [ "node", "index.js" ]