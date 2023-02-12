# Use an official ubuntu image as the base image
FROM ros:humble

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
# Add source commands to bashrc
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /home/${USERNAME}/.bashrc
RUN echo "source /home/${USERNAME}/mcav_ws/install/setup.bash" >> /home/${USERNAME}/.bashrc

COPY --chown=$USERNAME:$USERNAME ./mcav_challenges /home/mcav/mcav_ws/src

# Set the working directory in the container
WORKDIR /home/mcav/mcav_ws
RUN . /opt/ros/$ROS_DISTRO/setup.sh && colcon build

# Start a bash command prompt
CMD ["bash"]
