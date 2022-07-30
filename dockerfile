FROM node:16.16.0
WORKDIR /app
COPY package*.json ./
COPY ./dist .
COPY ./prisma ./prisma
RUN npm ci
CMD npx prisma migrate dev && node main.js
EXPOSE 8080
