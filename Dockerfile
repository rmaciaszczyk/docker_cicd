FROM node:latest
WORKDIR /app
ENTRYPOINT addgroup app && adduser -S -G app app && chown -R app /app
USER app
COPY package*.json ./
RUN npm install
COPY . ./
EXPOSE 4000
CMD = ["npm","run", "start"]
