FROM node:12
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm config set registry https://registry.npm.taobao.org && npm install --prod

COPY . .

EXPOSE 7001
CMD [ "npm", "run", "dev" ]