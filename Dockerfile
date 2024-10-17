# Stage 1: Build the SvelteKit app
FROM node:18-alpine AS BASE

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the SvelteKit app
CMD ["npm","run","dev"]


