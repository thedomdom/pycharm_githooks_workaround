#!/bin/bash

curpath=$(dirname $(realpath -s $BASH_SOURCE))

args=("$@")
x=(${args[@]//*[-=]*})
git_cmd="${x[0]}"

if [[ "$git_cmd" =~ ^(am|commit|rebase|checkout|clone|merge|pull|push|gc)$ ]]; then
  echo "THIS IS THE GIT WRAPPER!"
  echo ""
  echo $SHELL
  echo $curpath

  source $curpath/.conda_init
  conda_env=$(python $curpath/find_conda_env.py)
  if [ -n "$conda_env" ]; then
      echo "Activating $conda_env..."
      conda activate "$conda_env"
  fi
fi

git "$@"
