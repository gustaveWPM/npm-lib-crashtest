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

# @Mirror
test:
	$(PM) run test

# @Alias
check-format:
	$(PM) run ci:format-check

# @Alias
typecheck-project:
	$(PM) run ci:typecheck-project

# @Alias
check-exports:
	$(PM) run ci:check-exports

# @Override
ci: check-format check-exports test typecheck-project
