FROM node:latest
WORKDIR /usr/src/app
#RUN addgroup app && adduser -S -G app app && chown -R app /app
#USER app
COPY package*.json index.js ./
RUN npm install
RUN chown -R node /usr/src/app/node_modules
COPY . .
EXPOSE 3030
CMD = ["node", "index.js"]
