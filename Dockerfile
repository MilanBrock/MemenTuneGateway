# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the service listens on (change if necessary)
EXPOSE 8080

# Start the service with node server.js
CMD ["node", "server.js"]
