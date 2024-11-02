.PHONY: all ci

MAKEFLAGS += --silent

# NOTE: since MAKEFLAGS are set with --silent, the `@` annotations will be used to indicate effects

#==============
# § I. CONFIG
#==============

PM := pnpm

#=================
# § II. COMMANDS
#=================

#-------------------------
# **** II. 1) PM Related
#-------------------------

# @Mirror
%:
	$(PM) run "$@"

# @Default
all: build

# @Mirror
install:
	$(PM) install

# @Mirror
build:
	$(PM) run build

# @Alias
check-format:
	$(PM) run ci:format-check

# @Alias
typecheck-project:
	$(PM) run ci:typecheck-project

# @Override
ci: check-format typecheck-project
