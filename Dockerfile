# Use an official Node.js runtime as a base image
FROM node:14

# Create and set the working directory
WORKDIR /app

# Copy the package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Define the command to run the app
CMD ["node", "server.js"]
