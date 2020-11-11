# Makefile with auto-documented help
# Run with make or gmake

# Disable built-in rules and variables
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-builtin-variables

# Use bash instead of sh
SHELL := /usr/bin/env bash

# Filter out numbers and dashes from $OSTYPE
OS:= $(shell echo $${OSTYPE%%[1-9-]*})

# Timestamp to the minute
TIMESTAMP := $(shell date +'%Y-%m-%dT%H%M%z')

# Start jupyterlab at root of workspace, if WORKDIR is not defined.
WORKDIR ?= .

# Default Goal
.PHONY: all

all: help

### help -----------------------------------------------------------------------

# Thanks to https://www.thapaliya.com/en/writings/well-documented-makefiles/

help: ## Show this help.
	@awk -v em="\033[3m" -v color="\033[36m" -v reset="\033[0m" \
	'BEGIN { FS = ":.*##"; printf "Usage ($(OS) OS detected):\n make (or gmake) \n\nTargets:\n" } \
	/^[a-zA-Z0-9_-]+:.*?##/ { printf "  %s %-10s %s %s\n", color, $$1, reset, $$2 } \
	/^###/ { printf " %s%s%s\n", em, substr($$0, 5), reset } ' \
	$(MAKEFILE_LIST)

# Thanks to https://learning.oreilly.com/library/view/the-gnu-make/9781457189883/ch02.html
print-%: ## Print specific variable
	@echo $* = $($*) from $(origin $*)

printvars: ## Print all variables (sorted)
	@$(foreach V, $(sort $(.VARIABLES)), \
		$(if \
		$(filter-out environment% default automatic, $(origin $V)), \
			$(info $V=$($V) ($(value $V))) \
		) \
	)

# ------------------------------------------------------------------------------
# Add new sections below:
# 1. for section headers, start a new line: ### section header -----
# 2. for tasks with help info, start a new line: task: ## help info
# These will be populated into the generated help message.
# ------------------------------------------------------------------------------
