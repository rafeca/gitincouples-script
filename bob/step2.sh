#!/bin/bash

exe git clone ../github/bob.git .
git config user.name "Bob"
git config user.email "bob@localhost.com"
git config color.ui false

exe git remote -v

exe git remote set-url origin ../github/bob.git

exe git remote add upstream ../github/alice.git

exe git remote -v
