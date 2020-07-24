ARG FEDORA_RELEASE=32
FROM fedora:$FEDORA_RELEASE

RUN dnf install -y git openssh-clients tar gzip ca-certificates

RUN dnf install -y cmake make

RUN dnf install -y boost-devel
