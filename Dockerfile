FROM ubuntu:22.04

COPY nodesource_setup.sh /tmp/
RUN apt update && apt install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev curl
RUN cd /tmp && chmod +x nodesource_setup.sh && ./nodesource_setup.sh && cd - && apt install -y nodejs
