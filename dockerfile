# Use official Node.js image from Docker Hub
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's files
COPY . .

# Expose the port the app will run on
EXPOSE 8080

# Start the application
CMD ["node", "app.js"]

