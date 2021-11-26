# # Stage 1
FROM node:14.7.0 as build-step

RUN mkdir /app
WORKDIR /app

# COPY package.json /app
COPY . .

RUN npm install

CMD [ "npm", "start" ]   
# RUN npm run build --prod

# # Stage 2

# FROM nginx:1.17.1-alpine

# COPY --from=build-step /app/build /usr/share/nginx/html

# # npm install --save-dev @angular-devkit/build-angular