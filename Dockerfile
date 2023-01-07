FROM node as build
WORKDIR /app

COPY package*.json ./
COPY tsconfig.json ./
RUN npm ci 

RUN npm install -g typescript

COPY . .

RUN tsc -b

FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install --production

COPY --from=build /app/dist ./dist
COPY .env ./dist

WORKDIR ./dist

ENV PORT=8080

EXPOSE 8080

CMD node src/index.js
