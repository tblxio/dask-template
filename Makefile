
all: setup test

clean:
	rm -rf .pyenv/
	rm -rf .pytest_cache/

setup:
	virtualenv .pyenv
	( \
		. .pyenv/bin/activate; \
		pip install -r requirements.txt; \
  )

test:
	. .pyenv/bin/activate; \
	pytest -s -vv; \

format:
	. .pyenv/bin/activate; \
	pylama *.py; \
