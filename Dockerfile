FROM ubuntu:24.04

# Install dependencies.
RUN apt-get update && apt-get install -y wget steghide && rm -rf /var/lib/apt/lists/*

# Updated computer architecture selection of the OverflowEngine binary.
# This appears to work on Windows, Macs, and EC2 AMD64 and ARM64 instances.
RUN ARCH=$(dpkg --print-architecture) && \
    if [ "$ARCH" = "amd64" ]; then \
        wget https://github.com/CSSE6400/CoughOverflow-Engine/releases/download/v1.0/overflowengine-amd64 -O overflowengine; \
    else \
        wget https://github.com/CSSE6400/CoughOverflow-Engine/releases/download/v1.0/overflowengine-arm64 -O overflowengine; \
    fi && \
    chmod +x overflowengine

COPY sample-images images
