
FROM node:16

RUN mkdir -p /socket-server

COPY . /socket-server

ENV HY_SERVER server

WORKDIR /socket-server

RUN npm config set registry http://registry.npm.taobao.org

RUN npm install

 
EXPOSE 9348

CMD ["npm","run","prod-server"]
