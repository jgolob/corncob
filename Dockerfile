# golob/bbdml:0.0.1
#
# VERSION               0.0.1

FROM    python:3.9.1-buster

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
pigz \
&& apt-get clean \
&& apt-get purge \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /src/corncob
ADD . /src/corncob
RUN pip install /src/corncob && \
cd / && \
rm -r /src/corncob