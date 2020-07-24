#!/bin/bash


FEDORA_RELEASES="31 32"

REPOSITORY=harpoonemu/ci-build

GIT_SHA1=$(git log -1 --format="%h")

PUSH=0
DEV=1

if [[ "$1" == "build-push" ]];
then
	PUSH=1
	DEV=0
fi

if [[ ${DEV} == 1 ]];
then
	VER_TAG=dev
else
	VER_TAG=${GIT_SHA1}
fi

docker_build() {
	tag=$3
	df=$1
	dir=$2
	shift 3
	docker build --build-arg VER_TAG=${VER_TAG} $@ -t ${REPOSITORY}:${tag}-${VER_TAG} -f ${df} ${dir}
}

docker_push() {
	tag=$1
	shift 1
	if [[ ${PUSH} == 1 ]];
	then
		docker push ${REPOSITORY}:${tag}-${VER_TAG}
	fi
}

