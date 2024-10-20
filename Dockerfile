FROM node:latest

# Set the working directory to a more standard location
WORKDIR /usr/src/app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your application
COPY . .

# Expose the port your application will listen on
EXPOSE 3030

# Start your application
CMD ["node", "index.js"]
