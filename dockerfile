FROM node:latest
#WORKDIR /usr/src/app
#WORKDIR /usr/src/app
WORKDIR /usr/src
#COPY ./app/package*.json ./
#COPY ./app/ ./
COPY ./app/ ./

RUN npm install 
#RUN node install --production
#CMD ["node", "src/index.js"]
COPY . .
EXPOSE 8080
CMD ["npm", "test"]
#CMD ["node-sass", "sass/mystyles.scss css/mystyles.css"]
CMD ["npm", "start"]
