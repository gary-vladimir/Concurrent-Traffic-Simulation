# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Set environment variable to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install required dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    make \
    g++ \
    libsdl2-dev \
    libopencv-dev \
    git \
    nano \
    bash-completion \
    && rm -rf /var/lib/apt/lists/*

# Set working directory inside the container
WORKDIR /workspace

# Provide a default interactive shell
CMD ["/bin/bash"]
