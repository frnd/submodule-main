# Makefile

.PHONY: epic_create

# Default target
run:
	@echo "Usage: make epic NAME=value"

# Create a new epic
epic\ create: epic_create
epic_create:
	@echo "Creating epic: $(NAME)"
	@git submodule foreach 'git checkout -b epic/$(NAME)'
	@git checkout -b epic/$(NAME)

# Change to epic
epic\ change: epic_change
epic_change:
	@echo "Changing to epic: $(NAME)"
	@git submodule foreach 'git checkout epic/$(NAME)'
	@git checkout epic/$(NAME)
