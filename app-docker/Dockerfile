FROM node
RUN mkdir -p /usr/src/app
COPY index.js /usr/src/app
EXPOSE 80
USER root
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["sh", "/usr/local/bin/docker-entrypoint.sh"]
CMD [ "node", "/usr/src/app/index" ]

