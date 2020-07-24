#!/bin/bash

FEDORA_RELEASES="31 32"

REPOSITORY=harpoonemu/ci-build

GIT_SHA1=$(git log -1 --format="%h")
