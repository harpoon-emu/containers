#!/bin/bash

set -ex

BD="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
TD=${BD}/../../..

source ${TD}/build-config.sh

for r in ${FEDORA_RELEASES};
do
	tag=${REPOSITORY}:base-fedora-${r}-${GIT_SHA1}
	docker build --build-arg FEDORA_RELEASE=$r -t ${tag} -f ${BD}/Dockerfile ${BD}
	docker push ${tag}
done

