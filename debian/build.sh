#!/bin/sh
# https://github.com/streadway/hello-debian
gbp buildpackage --git-ignore-new --git-ignore-branch --git-cleaner='git clean -dfx'
