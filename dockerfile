FROM node:16.16.0
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY ./dist .
COPY ./prisma ./prisma
RUN npx prisma generate
CMD [ "node", "main.js" ]
EXPOSE 8080
