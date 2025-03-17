FROM ubuntu:24.04

# Install dependencies.
RUN apt-get update && apt-get install -y wget steghide && rm -rf /var/lib/apt/lists/*

RUN dpkg --print-architecture | grep -q "amd64" && export ARCH="amd64" || export ARCH="arm64" && wget https://github.com/CSSE6400/CoughOverflow-Engine/releases/download/v1.0/overflowengine-${ARCH} -O overflowengine && chmod +x overflowengine

COPY sample-images images
