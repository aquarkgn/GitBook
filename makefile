GIT_SUBMODULE_COMMAND = "git submodule update --init --recursive"

run: git-submodule-foreach

git-submodule-foreach:
	@echo "git submodule foreach git $(GIT_SUBMODULE_COMMAND)"
	@$(GIT_SUBMODULE_COMMAND)

docker-compose-up-d:
	@echo "cd deployment/docker-compose && docker-compose up -d"
	@cd deployment/docker-compose && docker-compose up -d