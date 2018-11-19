# dask-template

This project aims to be a starting point for [Dask](https://dask.org/) related data pipelines.

### Prerequisites

Install [python](https://www.python.org/downloads/) and [virtualenv](https://virtualenv.pypa.io/en/latest/installation/)

### How-to
* Setup and test: ```make all```
  * All-in-one
* Setup: ```make setup```
  * Installs all dependencies
* Test: ```make test```
  * Runs all tests
  * Using [pytest](https://pypi.org/project/pytest/)
* Clean: ```make clean```
  * Removes all cached files
* Format: ```make checkFormat```
  * Ensures standard style/format
  * Using [pylama](https://pypi.org/project/pylama/)

**Note:** Run `Setup` as your init command (or after `Clean`)
