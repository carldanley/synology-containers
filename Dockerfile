FROM almir/webhook:2.8.2
RUN apk --update --upgrade add docker curl bash && \
  rm -rf /var/cache/apk/*
