#!/bin/bash

cd `dirname $0`
set -e

flake8 ../formic ../tests
PYTHONPATH="../formic" python -m coverage run --source formic -m pytest $@

python -m coverage report -m
