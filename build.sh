#!/bin/sh
# https://github.com/streadway/hello-debian
gbp buildpackage -uc -us --git-ignore-new --git-ignore-branch --git-cleaner='git clean -dfx'
