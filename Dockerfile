FROM node:6.9.5
RUN npm install -g bower
COPY package.json /usr/app/package.json
COPY bower.json /usr/app/bower.json
RUN  cd /usr/app
RUN npm install
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN bower install
COPY . /usr/app
