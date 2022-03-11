FROM alpine

RUN apk update
RUN apk add --no-cache \ 
    python3 \
    py3-pip \
    curl \
    zip \
    unzip \
    jq

RUN pip3 install --upgrade pip
RUN pip3 install awscli
RUN rm -rf /var/cache/apk/*

COPY entrypoint.sh .
ENTRYPOINT [ "sh", "entrypoint.sh" ]