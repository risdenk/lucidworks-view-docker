FROM node:6

RUN git clone https://github.com/lucidworks/lucidworks-view && cd lucidworks-view
RUN npm install
RUN bower install
RUN npm run build

