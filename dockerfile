FROM node:16.16.0
ENV PORT=3000
ENV HOST=localhost
ENV DATABASE_URL="mysql://root:root1234@localhost:3306/trying_prisma_db"
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY ./dist .
COPY ./prisma ./prisma
RUN npx prisma generate
CMD [ "node", "main.js" ]
EXPOSE 8080
