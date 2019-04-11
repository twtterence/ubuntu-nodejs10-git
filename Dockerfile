FROM ubuntu:18.04
LABEL maintainer="twtterence@gmail.com"

SHELL ["/bin/bash","-c"]

# update apt-get, install curl,zip,unzip. 
RUN apt-get update && apt-get install -y curl zip unzip 



# Install Node.js
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

## git
RUN apt-get update; \
    apt-get install -y git; \
    apt-get clean;

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get install yarn

WORKDIR /root/build

CMD ["bash"]
