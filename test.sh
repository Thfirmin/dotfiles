#!/usr/bin/env bash

export TEST_HOME="$(pwd)/dist/home/$USER"

mkdir -p $TEST_HOME

./ecc
