#!/bin/bash

exe git pull upstream master

exe git diff --name-status ORIG_HEAD
