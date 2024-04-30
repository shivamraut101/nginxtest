FROM node:lts-alpine

# Set the working directory inside the container
WORKDIR /nginxtest

# Install npm explicitly
RUN apk add --no-cache npm

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 7777

CMD ["node","index.js"]