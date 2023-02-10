# Use an official ubuntu image as the base image
FROM ubuntu:22.04

RUN apt-get -y update && apt-get install -y \
    sudo \
    && rm -rf /var/lib/apt/lists/*
# Create a non-root user with sudo privileges
ARG USERNAME=mcav
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
# Change prompt to show we are in a docker container
RUN echo "export PS1='\[\e]0;\u@docker: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@docker\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /home/${USERNAME}/.bashrc
USER $USERNAME

# Set the working directory in the container
WORKDIR /home/mcav/m/c/m
RUN touch nope

WORKDIR /home/mcav/m/c/v
RUN touch sorry

WORKDIR /home/mcav/m/a/c
RUN touch not_here

WORKDIR /home/mcav/m/v/c/a
RUN touch not_here_either

WORKDIR /home/mcav/m/c/a/m
RUN touch nearly

WORKDIR /home/mcav/m/c/a/a
RUN touch so_close

WORKDIR /home/mcav/m/c/a/c
RUN touch not_here_either

WORKDIR /home/mcav/m/c/a/v
RUN touch FLAG{acronyms_are_cryptic}

WORKDIR /home/mcav

# Start a bash command prompt
CMD ["bash"]
