FROM alpine:edge

RUN apk add --update --no-cache git curl ansible ansible-lint openssh sshpass && \
    find /usr/lib/ -name '__pycache__' -print0 | xargs -0 -n1 rm -rf && \
    find /usr/lib/ -name '*.pyc' -print0 | xargs -0 -n1 rm -rf

WORKDIR /app

COPY entrypoint.sh .
COPY dockcheck.ansible.yaml .
COPY notify_gotify.sh .
COPY inventory.ansible.yaml .

RUN chmod +x entrypoint.sh

ENV ANSIBLE_VERBOSITY=1
ENV ANSIBLE_HOST_KEY_CHECKING=false
ENV ANSIBLE_INVENTORY=/app/inventory.ansible.yaml
ENV ANSIBLE_CALLBACK_RESULT_FORMAT=yaml

ENTRYPOINT ["./entrypoint.sh"]