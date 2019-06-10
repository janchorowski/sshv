#!/bin/bash

set -a
eval "$(echo $LC_ENV | base64 -d)"
set +a
cd $LC_PWD
unset LC_ENV
unset LC_PWD

$SHELL -i
