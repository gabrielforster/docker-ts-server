FROM node
WORKDIR /app

COPY package*.json ./
COPY tsconfig.json ./
RUN npm ci 

RUN npm install -g typescript

COPY . .

##RUN npm run build
RUN tsc -b

COPY .env ./dist



WORKDIR ./dist

ENV PORT=8080

EXPOSE 8080

CMD node src/index.js
