FROM node:16.20.0-alpine3.17

RUN apk update && apk upgrade

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

USER node

CMD [ "npm", "start" ]