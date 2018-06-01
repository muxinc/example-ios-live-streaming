#!/bin/bash

# Docs by jazzy
# https://github.com/realm/jazzy
# ------------------------------

jazzy \
    --clean \
    --author 'Mux Inc.' \
    --author_url 'http://mux.com' \
    --github_url 'http://github.com/muxinc/example-ios-live-streaming' \
    --sdk iphonesimulator \
    --xcodebuild-arguments -scheme,MuxLive \
    --module 'MuxLive' \
    --framework-root . \
    --readme README.md \
    --output docs/
