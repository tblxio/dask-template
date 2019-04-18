# dask-template

[![CircleCI](https://circleci.com/gh/TechhubLisbon/dask-template.svg?style=svg)](https://circleci.com/gh/TechhubLisbon/dask-template)
This project aims to be a starting point for [Dask](https://dask.org/) related data pipelines.

Dask documentation: http://docs.dask.org/en/latest/

### Prerequisites

Install [python](https://www.python.org/downloads/) and [virtualenv](https://virtualenv.pypa.io/en/latest/installation/)

### Continuous Integration

Check CI status [here](https://circleci.com/gh/techhublisbon/dask-template)

### How-to
* All-in-one: ```make all```
  * Setup, format, test and package
* Setup: ```make setup```
  * Installs all dependencies
* Test: ```make test```
  * Runs all tests
  * Using [pytest](https://pypi.org/project/pytest/)
* Clean: ```make clean```
  * Removes all cached files
* Format: ```make checkFormat```
  * Checks standard style is applied
  * Using [pylama](https://pypi.org/project/pylama/)
  * Configure settings on [pylama.ini](pylama.ini)
* Package: ```make package```
  * Creates a bundle of software to be installed
* Docs: ```make docs```
  * Generates documentation from modules
  * Using [pydoc](https://docs.python.org/2/library/pydoc.html)

**Note:** Run `Setup` as your init command (or after `Clean`)

### To-Do

* Add more Dask methods (+ tests)
* Wrap package into Docker image
* Support Jupyter notebook

### Contributing

Review [the contributing guidelines](CONTRIBUTING.md) before you make your awesome contribution

### License

This project is licensed under the terms of the MIT license. See [LICENSE](LICENSE) 