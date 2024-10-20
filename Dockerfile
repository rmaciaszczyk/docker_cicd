FROM node:latest
WORKDIR /app
#RUN addgroup app && adduser -S -G app app && chown -R app /app
#USER app
COPY package*.json index.js ./
RUN npm install
COPY . ./
EXPOSE 3030
CMD = ["node", "index.js"]
