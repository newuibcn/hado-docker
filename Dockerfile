FROM node:6.9.5

RUN npm install -g bower
RUN npm install -g polymer-cli@next
RUN npm install -g gulp
COPY package.json /usr/app/package.json
COPY bower.json /usr/app/bower.json
RUN  cd /usr/app && npm install
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN cd /usr/app && bower install
COPY . /usr/app
