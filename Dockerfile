FROM node:18-alpine as build
WORKDIR /app
COPY . /app/
RUN npm i --legacy-peer-deps
RUN npm run build
EXPOSE 4200


FROM nginx:alpine
COPY --from=build /app/dist/ /usr/share/nginx/html