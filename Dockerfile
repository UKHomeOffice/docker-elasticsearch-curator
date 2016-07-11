FROM alpine:3.4

RUN apk upgrade --no-cache
RUN apk add --no-cache python3 bash
RUN adduser -h /data -D curator

RUN pip3 install elasticsearch-curator==4.0.1

USER curator

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
