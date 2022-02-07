FROM ubuntu:20.04

WORKDIR /app

COPY package*.json /app/

RUN apt update && apt install npm && npm istall

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]