FROM node:16

# Create app directory
WORKDIR /usr/src/app

COPY . .

EXPOSE 8000
CMD [ "node", "server.js" ]
