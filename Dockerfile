FROM ubuntu:latest
RUN apt-get update && apt-get install -y git bash

# Since we are using an Ubuntu image, we need to add the deadsnakes PPA
# to get Python 3.7. This is because the default Ubuntu repositories
# only have Python 3.6.

RUN apt-get update && apt-get install -y \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt-get install -y \
    python3.7 \
    python3.7-distutils \
    python3.7-dev \
    python3.7-venv \
    python3-pip

RUN python3.7 -m pip install --upgrade pip

WORKDIR /app
COPY . .

EXPOSE 8080 12344
