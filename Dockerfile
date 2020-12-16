# golob/bbdml:0.0.1
#
# VERSION               0.0.1

FROM    python:3.9.1-buster

RUN export DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /src/corncob
ADD . /src/corncob
RUN pip install /src/corncob && \
cd / && \
rm -r /src/corncob