#FROM 415704696994.dkr.ecr.us-east-1.amazonaws.com/alpine-infra-image:latest
FROM node20

USER node

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
