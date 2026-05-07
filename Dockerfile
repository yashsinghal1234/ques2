FROM node:22-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install express

COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
