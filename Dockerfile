# Use a Node.js base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app's source code
COPY . .

# Build the application
RUN npm run build

# Expose a port (e.g., 3000)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
