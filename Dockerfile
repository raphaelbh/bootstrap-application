FROM alpine

RUN apk update
RUN apk --no-cache add curl
RUN apk --no-cache add zip
RUN apk --no-cache add unzip
RUN apk --no-cache add jq

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

COPY entrypoint.sh .
ENTRYPOINT [ "sh", "entrypoint.sh" ]