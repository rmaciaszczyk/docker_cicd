FROM node:latest
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
#RUN addgroup app && adduser -S -G app app && chown -R app /app
#USER app
COPY package*.json ./
USER node
RUN npm install
#RUN chown -R node /usr/src/app/node_modules
COPY --chown=node:node . .
EXPOSE 3030
CMD = ["node", "index.js"]
