#!/usr/bin/env bash

export PIP_NO_INDEX=False
export PIP_NO_DEPENDENCIES=False
export PIP_IGNORE_INSTALLED=False

pip install --no-cache-dir -r ./requirements.tensorflow_macos.txt