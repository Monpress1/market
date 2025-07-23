# Base image
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

# Creates a "dist" folder with the production build
RUN npm run build

# Start the server using the production build
CMD ["node", "dist/app.js"]
