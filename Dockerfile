FROM debian:trixie-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt upgrade --yes
RUN apt install --yes gcc git vim make build-essential python3 python3-pip cmake libicu-dev libcapstone-dev pkg-config python3-capstone # libcapstone4 removed
RUN pip3 install pyelftools requests ninja setuptools capstone --break-system-packages
# RUN apt install --yes libcapstone-dev libcapstone4 pkg-config python3-capstone

RUN git clone https://github.com/worawit/blutter
# RUN git clone https://github.com/trufae/blutter && ( cd blutter && git checkout test45 )
# RUN git clone https://github.com/trufae/blutter && ( cd blutter && git checkout initial-r2 )
# COPY arm64-v8a arm64-v8a
# RUN cd /blutter && python3 blutter.py /arm64-v8a/ out
WORKDIR /blutter

ENTRYPOINT ["/bin/bash"]
