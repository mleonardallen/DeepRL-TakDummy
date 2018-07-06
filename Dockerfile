FROM tensorflow/tensorflow:latest-py3
# Dockerfile author / maintainer 
MAINTAINER Mike Allen <mikeleonardallen@gmail.com>

ADD . /workspace
WORKDIR "/workspace" 

# Needed to forward pygame display
RUN apt-get update -y \
  && apt-get -y install \
    xvfb \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

# TAK python dependencies
RUN pip install \
	--no-cache-dir \
	--process-dependency-links \
	.

CMD ["tak-dummy", "--render"]