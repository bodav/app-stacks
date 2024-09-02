FROM alpine:edge

ENV DEVCONTAINER=true

RUN apk add --update --no-cache git make ansible ansible-lint openssh sshpass curl && \
    find /usr/lib/ -name '__pycache__' -print0 | xargs -0 -n1 rm -rf && \
    find /usr/lib/ -name '*.pyc' -print0 | xargs -0 -n1 rm -rf