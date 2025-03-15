FROM nvcr.io/nvidia/l4t-base:r32.7.1

# nvcr.io/nvidia/l4t-base:r32.7.1 is jetson nano image
# nvidia/cuda:12.2.2-base-ubuntu22.04 is x86-compatible CUDA image

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y \
    git \
    nano

# init Bash
CMD ["/bin/bash"]

# Create new user
RUN useradd -ms /bin/bash dev \
    && echo "dev:nickreed" | chpasswd \
    && usermod -aG sudo dev \
    && echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to new user
USER dev

# Go to home directory of user
WORKDIR /home/dev
