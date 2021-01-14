#what version of this do we need
FROM node:10

#I am using your own
WORKDIR /usr/src/take_home_app

#What does the ./ mean?
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node" , "gatsby-browser.js" , "gatsby-config.js" , "gatsby-node.js" , "gatsby-ssr.js"]