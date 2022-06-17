# syntax=docker/dockerfile:1

# Use Node image as a base
FROM node:12.18.1
# Improve performance
ENV NODE_ENV=production

# Use this path as our base directory
WORKDIR /app

# Copy our package* to the container
COPY ["package.json", "package-lock.json*", "./"]

# Install dependencies
RUN npm install --production

# Copy the source code to the container, the node_modules must be avoided
COPY . .

# Start the server
CMD [ "node", "server.js" ]
