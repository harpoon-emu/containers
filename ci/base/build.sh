#!/bin/bash

set -ex

BD="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

${BD}/fedora/build.sh $@
