FROM node:6

RUN wget -qO- https://github.com/lucidworks/lucidworks-view/tarball/master | tar zx -C / && mv /lucidworks-lucidworks-view* /lucidworks-view

WORKDIR /lucidworks-view

RUN npm install
RUN bower install
RUN npm run build

