FROM node
RUN mkdir -p /usr/src/app
COPY index.js /usr/src/app
EXPOSE 80
USER root
CMD [ "node", "/usr/src/app/index" ]
RUN chmod a+rx /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["sh", "/usr/local/bin/docker-entrypoint.sh"]

