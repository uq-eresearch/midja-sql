FROM node:alpine

COPY . /app
WORKDIR /app
RUN npm install

VOLUME /conf
USER daemon
ENTRYPOINT ['npm','start','/conf/db.json','3000']

EXPOSE 3000
