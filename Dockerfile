# Use official Node.js image
FROM node:14

# Create and change to the app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port and define the start command
EXPOSE 3000
CMD [ "node", "index.js" ]
