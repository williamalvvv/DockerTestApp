 FROM node:12-alpine
 RUN apk add --no-cache python3 g++ make
 COPY . .
 RUN yarn install --production
 EXPOSE 3000
 CMD ["node", "src/index.js"]
