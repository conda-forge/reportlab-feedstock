#!/bin/bash

$PYTHON -m pip install . -vv

if [[ "${CONDA_BUILD_CROSS_COMPILATION}" != "1" ]]; then
  $PYTHON setup.py tests
fi
