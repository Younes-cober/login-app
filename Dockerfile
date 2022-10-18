FROM node:lts-alpine3.15

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN apk update

RUN apk add bind-tools

EXPOSE 3000

CMD ["npm", "start"]