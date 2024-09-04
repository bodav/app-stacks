FROM alpine:edge

ARG TARGETARCH

RUN apk add --update --no-cache git ansible ansible-lint openssh sshpass && \
    find /usr/lib/ -name '__pycache__' -print0 | xargs -0 -n1 rm -rf && \
    find /usr/lib/ -name '*.pyc' -print0 | xargs -0 -n1 rm -rf && \
    wget https://github.com/OliveTin/OliveTin/releases/latest/download/OliveTin_linux_${TARGETARCH}.apk && \
    apk add --allow-untrusted OliveTin_linux_${TARGETARCH}.apk && \
    rm OliveTin_linux_${TARGETARCH}.apk

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

EXPOSE 8080

ENV ANSIBLE_VERBOSITY=3
ENV ANSIBLE_HOST_KEY_CHECKING=false
ENV ANSIBLE_INVENTORY=/opt/ops/inventory.yaml
ENV ANSIBLE_STDOUT_CALLBACK=yaml

ENTRYPOINT ["./entrypoint.sh"]