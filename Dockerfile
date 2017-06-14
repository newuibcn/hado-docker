FROM node:6.9.5
RUN npm install -g bower
COPY package.json /usr/app/package.json
RUN  cd /usr/app && npm install
COPY . /usr/app
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN bower install
