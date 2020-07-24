#!/bin/bash

set -ex

BD="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
TD=${BD}/../../..

source ${TD}/build-config.sh

for r in ${FEDORA_RELEASES};
do
	tag=base-fedora-${r}
	docker_build ${BD}/Dockerfile ${BD} ${tag} --build-arg FEDORA_RELEASE=$r
	docker_push ${tag}
done

