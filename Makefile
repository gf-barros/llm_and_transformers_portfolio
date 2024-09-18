ANACONDA_INSTALLED := $(shell command -v conda 2> /dev/null)

all: install

install:
ifdef ANACONDA_INSTALLED
	@echo "Anaconda is installed. Creating 'llm_and_transformers_portfolio' environment..."
	conda create -n llm_and_transformers_portfolio python=3.10
	@echo "Environment created successfully."
else
	@echo "Anaconda is not installed. Falling back to pyenv..."
	pyenv virtualenv llm_and_transformers_portfolio
	@echo "Environment created successfully using pyenv."
endif
