FROM almir/webhook:2.8.2 AS webhook

FROM alpine:3.22.0
COPY --from=webhook /usr/local/bin/webhook /usr/local/bin/webhook
RUN  apk --update --upgrade add docker curl bash && \
  rm -rf /var/cache/apk/*
WORKDIR     /etc/webhooks
VOLUME      ["/etc/webhooks"]
EXPOSE      9000
ENTRYPOINT  ["/usr/local/bin/webhook"]
