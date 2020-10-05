FROM node:12.16.1-alpine AS frontend
WORKDIR /usr/src/app
COPY build/airella-gsm-http-extender-proxy/package.json ./
RUN npm install
COPY build/airella-gsm-http-extender-proxy .

EXPOSE 8080
CMD [ "node", "proxy.js" ]