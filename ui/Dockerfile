FROM node:6

RUN mkdir /ui

COPY ./src /ui/src
COPY ./public /ui/public
COPY ./package.json /ui/package.json

WORKDIR /ui

RUN npm i
RUN npm run build

RUN mkdir /build
RUN cp -r /ui/build/* /build/

VOLUME /build

ENTRYPOINT ["sleep", "20"]
