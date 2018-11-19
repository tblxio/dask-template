
all: setup test

setup:
	virtualenv .pyenv
	( \
		. .pyenv/bin/activate; \
		pip install -r requirements.txt; \
  )

test:
	. .pyenv/bin/activate; \
	pytest -s -vv; \
