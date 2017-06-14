FROM node:6.9.5
RUN npm install -g bower
RUN npm install
RUN bower install --allow-root
