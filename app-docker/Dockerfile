FROM node
RUN mkdir -p /usr/src/app
COPY index.js /usr/src/app
EXPOSE 80
USER root
RUN chmod a+rx /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD [ "node", "/usr/src/app/index" ]

