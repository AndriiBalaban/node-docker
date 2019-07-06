FROM node:6-slim

RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y git \
    && apt-get install -y node-express-generator

#ENTRYPOINT ["tail", "-f", "/dev/null"]