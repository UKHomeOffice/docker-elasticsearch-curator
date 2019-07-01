FROM alpine:3.4

RUN apk upgrade --no-cache
RUN apk add --no-cache python3 bash
RUN adduser -h /data -D -u 1000 curator

RUN pip3 install elasticsearch-curator==5.7.6

USER 1000

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
