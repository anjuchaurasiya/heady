FROM node
RUN mkdir -p /usr/src/app
COPY index.js /usr/src/app
EXPOSE 80
CMD [ "node", "/usr/src/app/index" ]
RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]
