FROM ubuntu

# application content
COPY ./application /bootstrap
WORKDIR /bootstrap

# install dependencias
RUN apt-get update
RUN apt-get install -y curl zip unzip jq
RUN apt-get clean

# install aws-cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# run bootstrap
RUN chmod +x ./bootstrap.sh
CMD ["./bootstrap.sh"]