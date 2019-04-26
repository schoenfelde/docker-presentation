# Pull base image.
FROM ubuntu:14.04

# Install.
RUN  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \

# Add files.
ADD root/.bashrc /root/.bashrc

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]