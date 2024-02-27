FROM alpine:edge

RUN apk add git python3 ansible ansible-lint py3-pip openssh sshpass
RUN rm -f /tmp/* /etc/apk/cache/*

#COPY test.sh /etc/periodic/15min

# Setting up crontab
COPY crontab /tmp/crontab
RUN cat /tmp/crontab > /etc/crontabs/root

CMD ["crond", "-f", "-l", "0"]