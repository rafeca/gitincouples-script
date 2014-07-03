#!/bin/bash

# checks that a command is installed
function check_command {
  if ! which $1 >/dev/null; then
    echo >&2 "You need to install the '$1' command."
    echo >&2 "If you are in a debian mahine, run 'sudo apt-get install $1'"
    exit 1
  fi
}

# echos a colored text on screen
function p {
  echo -e "\033[32m$@\033[39m"
}
export -f p

# executes a command silently
function exe {
  p $ $@ ; "$@" ;
}
export -f exe

# executes a command silently
function shh {
  "$@" >/dev/null 2>&1
}
export -f shh

# Runs the specified step
function run_step {
  if [ "$step_name" == "$1" ] && [ "$step_num" == "$2" ]; then
    ready=1
  elif [ $ready -eq 0 ]; then
    return
  fi

  echo ""
  echo -e "\033[31m###############################"
  echo -e "Running step $2 for $1"
  echo -e "###############################\033[39m"
  echo ""
  cd $1
  ../$(dirname "$0")/$1/step$2.sh
  cd ..
  echo -en "\n\033[33mpress enter to continue...\033[39m"
  read input_variable
}

# Check dependencies
check_command unzip
check_command git
check_command wget

# Setup variables for resuming execution
ready=0
step_name=$1
step_num=$2

if [ $# -ne 2 ]; then
  # Setup the needed directories
  $(dirname "$0")/setup.sh
  ready=1
fi

p Do you want to run everything locally?
p If you answer "Y", you won\'t need to navigate manually to GiHub
read mock_gh
export mock_gh

if [ $mock_gh != 'Y' ]; then
  p Enter Alice github repository URL:
  read gh_alice_url
  p Enter Bob github repository URL:
  read gh_bob_url
else
  gh_bob_url='../github/bob.git'
  gh_alice_url='../github/alice.git'
fi
export gh_bob_url
export gh_alice_url

# Run all the steps
run_step alice 1
run_step alice 2

run_step bob 1
run_step bob 2

run_step alice 3

run_step bob 3
run_step bob 4
run_step bob 5
run_step bob 6

run_step alice 4

run_step bob 7

run_step alice 5
run_step alice 6

run_step bob 7b
run_step bob 8

run_step alice 7

run_step bob 9
run_step bob 10

run_step alice 8

run_step bob 10b

run_step alice 9

run_step bob 11
run_step bob 12

run_step alice 10

run_step bob 12b
run_step bob 13

run_step alice 11
run_step alice 12
