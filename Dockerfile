# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json first (better for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port (depends on your app, e.g., 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
