# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
CMD ["node", "src/index.js"]
COPY . .
EXPOSE 3000
