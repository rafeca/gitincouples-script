#!/bin/bash

# delete everything
rm -fr github alice bob

# those two folders simulate the github repositories
mkdir -p github/alice.git github/bob.git

# those two folders simulate the local repositories
mkdir -p alice bob
