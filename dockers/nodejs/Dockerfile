FROM node:14


RUN mkdir /react-app
COPY . /react-app
WORKDIR /react-app

RUN npm install --registry=https://registry.npm.taobao.org
RUN echo "environment ${DEPLOY_ENV}" && \
NODE_ENV=${DEPLOY_ENV} URL=${URL} npm run build

