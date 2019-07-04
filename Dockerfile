FROM ubuntu:14.04
WORKDIR /yang-explorer
COPY . /yang-explorer
RUN apt-get update && apt-get install -y \
  graphviz \
  libxml2-dev \
  libxslt1-dev \
  git \
  python-dev \
  python-pip \
  zlib1g-dev
RUN sudo pip install --upgrade setuptools
RUN pip install -r requirements.txt
EXPOSE 8088
RUN ./setup.sh
CMD ["bash", "./start.sh"]