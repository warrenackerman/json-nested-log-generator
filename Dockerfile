FROM gliderlabs/alpine
RUN apk-install bash

ADD json-log-generator.sh /

ENTRYPOINT ["/json-log-generator.sh"]
