#
# Chrome Dockerfile
#
# https://github.com/dockerfile/chrome
#

# Pull base image.
FROM dockerfile/ubuntu-desktop

# Install Chromium.
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y google-chrome-stable

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901
