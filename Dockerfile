FROM node:15.8.0-alpine3.10

WORKDIR /app
ADD index.js package.json ./

RUN npm install express

RUN npm install
CMD node index.js
