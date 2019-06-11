NAME   := flavioespinoza/alpine-node
TAG    := $(shell git rev-parse --abbrev-ref HEAD)
IMG    := ${NAME}:${TAG}

build:
		@make build-docker

build-docker:
		@echo "***** Building Docker image" ${IMG} "*****"
		@npm run docker:build
		@echo "***** Built Docker image" ${IMG} "*****"
