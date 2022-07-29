FROM node:16.16.0
WORKDIR /app
COPY package*.json ./
COPY ./dist .
COPY ./prisma ./prisma
RUN npm ci
RUN npx prisma generate
CMD [ "node", "main.js" ]
EXPOSE 8080
