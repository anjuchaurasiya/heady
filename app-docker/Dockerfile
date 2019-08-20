FROM node
RUN mkdir -p /usr/src/app
COPY index.js /usr/src/app
WORKDIR /usr/src/app
RUN npm install
COPY . /usr/src/app
CMD [ "node", "/usr/src/app/index.js" ]
EXPOSE 80


