# Use an official Node.js runtime as the base image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .
RUN npm run build

# Expose a port to communicate with the outside world
EXPOSE 3000

# Command to run the application when the container starts
CMD ["npm", "start"]
