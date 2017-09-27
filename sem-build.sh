#!/bin/bash
# Generates app version string in form: "17.05.08.10.24.b306d134", where
# 17.05.08 is date 2017.05.08 (YY.MM.DD), 10.24 is hour and minutes,
# b306d134 is a last commit hash from repo.
APP_VERSION=$(date +'%y.%m.%d.%H.%M.')$(git log --format="%H" -n 1 | cut -c 1-7)

# Sets APP_VERSION in index.html file in place of placeholder __APP_VERSION__
sed -i "s/__APP_VERSION__/${APP_VERSION}/" build/index.html
