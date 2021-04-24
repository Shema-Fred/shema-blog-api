FROM node:13-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

ENV NODE_ENV production

RUN yarn install

EXPOSE 1337

RUN chmod a+x /usr/src/app/run.sh


CMD ["/usr/src/app/run.sh"]