FROM node:15.5.1-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY src ./src
COPY tests ./tests
ARG PORT=3000
EXPOSE 3000
CMD [ "node", "src/app.js" ]