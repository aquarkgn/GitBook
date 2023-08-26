GIT_SUBMODULE_COMMAND = "git submodule update --init --recursive"

git-submodule-foreach:
	@echo "git submodule foreach git $(GIT_SUBMODULE_COMMAND)"
	@$(GIT_SUBMODULE_COMMAND)