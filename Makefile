
.PHONY: clean setup test checkFormat

all: setup checkFormat test package

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
	pytest -s -vv;

checkFormat:
	. .pyenv/bin/activate; \
	pylama -l "pycodestyle,mccabe" -f pylint daskfunc;

package:
	. .pyenv/bin/activate; \
	python setup.py sdist --formats=gztar;

docs:
	mkdir -p public; \
	. .pyenv/bin/activate; \
	pydoc -w daskfunc/core.py; \
	mv core.html public/index.html;
