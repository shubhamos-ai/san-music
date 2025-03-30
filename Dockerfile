FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the files
COPY . .

# Run the deploy command
RUN npm run deploy

# Expose any necessary ports
EXPOSE 3000

# Start the bot
CMD ["node", "index.js"]
