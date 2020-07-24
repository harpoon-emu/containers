ARG FEDORA_RELEASE=32
ARG VER_TAG=dev
FROM harpoonemu/ci-build:fedora-$FEDORA_RELEASE-${VER_TAG}

RUN dnf install -y clang

ENV CC=/usr/bin/clang
ENV CXX=/usr/bin/clang++



