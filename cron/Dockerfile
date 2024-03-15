FROM alpine:edge

RUN apk add git python3 ansible ansible-lint py3-pip openssh sshpass
RUN rm -f /tmp/* /etc/apk/cache/*

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]