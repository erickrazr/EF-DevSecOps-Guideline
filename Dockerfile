FROM node:20
USER node
EXPOSE 8080
CMD [ "npm", "start" ]
