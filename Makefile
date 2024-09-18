ANACONDA_INSTALLED := $(shell command -v conda 2> /dev/null)

all: install

install:
ifdef ANACONDA_INSTALLED
	@echo "Anaconda is installed. Creating 'simple_sciml_template' environment..."
	conda create -n simple_sciml_template python=3.10
	@echo "Environment created successfully."
else
	@echo "Anaconda is not installed. Falling back to pyenv..."
	pyenv virtualenv simple_sciml_template
	@echo "Environment created successfully using pyenv."
endif
