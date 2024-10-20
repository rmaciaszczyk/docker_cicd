FROM node:latest
#RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
#RUN addgroup app && adduser -S -G app app && chown -R app /app
#USER app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3030
CMD = ["node", "/home/node/app/index.js"]
