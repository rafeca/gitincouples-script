#!/bin/bash

exe git clone $gh_bob_url .
git config user.name "Bob"
git config user.email "bob@localhost.com"
git config color.ui false

exe git remote -v

exe git remote set-url origin $gh_bob_url

exe git remote add upstream $gh_alice_url

exe git remote -v
