FROM alpine:latest AS builder
RUN apt-get update && apt-get install zip unzip

FROM filebrowser/filebrowser:latest
COPY --from=builder /usr/bin/unzip /usr/bin/
COPY --chmod=755 start.sh ./

ENTRYPOINT ["/bin/sh"]

CMD ["start.sh"]
