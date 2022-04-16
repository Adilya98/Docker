FROM node:latest

RUN mkdir "/test"

WORKDIR /test

COPY . /test

RUN npm i

COPY . .

RUN npm install --global gulp-cli

EXPOSE 3000

CMD gulp