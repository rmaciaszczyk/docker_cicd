FROM node:latest
WORKDIR /usr/src/app
ADD package*.json ./
RUN npm install
COPY . .
EXPOSE 4000
CMD = ["npm","run", "start"]
