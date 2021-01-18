
FROM node:alpine

#Recursively create working directory
WORKDIR /usr/src/take_home_app

#What does the ./ mean?
COPY package*.json ./
RUN npm update
RUN npm install

#copy the whole source folder(the dir is relative to the Dockerfile)
COPY . .

#Here they expose 80
FROM nginx EXPOSE 8080

CMD [ "npm" , "run" , "start" ]