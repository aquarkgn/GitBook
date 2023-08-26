SHELL := /bin/bash

PROJ_PATH := $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))

GIT_SUBMODULE_COMMAND = "git submodule update --init --recursive"

run: git-submodule-foreach docker-compose-up-d

git-submodule-foreach:
	@echo "git submodule foreach $(GIT_SUBMODULE_COMMAND)"
	@cd $(PROJ_PATH)
	@pwd
	@$(GIT_SUBMODULE_COMMAND)

docker-compose-up-d:
	@echo "cd deployment/docker-compose && docker-compose up -d"
	@cd deployment/docker-compose && docker-compose up -d