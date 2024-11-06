FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production && yar cache clean
CMD ["src/index.js"]
EXPOSE 3000