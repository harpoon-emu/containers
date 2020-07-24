#!/bin/bash

set -ex

BD="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

${BD}/ci/build.sh $@
