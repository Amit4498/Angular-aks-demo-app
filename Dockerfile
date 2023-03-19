FROM node:alpine 
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm i --legacy-peer-deps
COPY . .
EXPOSE 4200
CMD [ "npm", "start" ]
