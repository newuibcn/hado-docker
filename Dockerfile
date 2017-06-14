FROM node:6.9.5
RUN npm install -g bower
RUN npm install
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN bower install
