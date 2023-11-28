FROM filebrowser/filebrowser:latest

COPY --chmod=755 start.sh ./

RUN apt-get install zip unzip

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
