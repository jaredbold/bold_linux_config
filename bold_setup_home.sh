#!/bin/bash
SCRIPT=`basename $0`
IGNORES=(".git" "$SCRIPT" "." "..")
HIDDEN_FILES=$PWD/.*
FILES=$PWD/*

for f in $HIDDEN_FILES
do
  IGNORE=0
  FILE=`basename $f`
  # Determine if it should be skipped
  for i in "${IGNORES[@]}"
  do
    if [ $i = $FILE ]; then
      IGNORE=1 
    fi
  done
  if [ $IGNORE = 1 ]; then
    continue
  fi

  # Check if the file already exists in $HOME
  if [ -e "$HOME/$FILE" ]; then
    echo "$HOME/$FILE already exists, moving to $HOME/$FILE.bak"
    mv "$HOME/$FILE" "$HOME/$FILE.bak"
  fi
  ln -s $f $HOME/
done

for f in $FILES
do
  IGNORE=0
  FILE=`basename $f`
  # Determine if it should be skipped
  for i in "${IGNORES[@]}"
  do
    if [ $i = $FILE ]; then
      IGNORE=1 
    fi
  done
  if [ $IGNORE = 1 ]; then
    continue
  fi

  # Check if the file already exists in $HOME
  if [ -e "$HOME/$FILE" ]; then
    echo "$HOME/$FILE already exists, moving to $HOME/$FILE.bak"
    mv "$HOME/$FILE" "$HOME/$FILE.bak"
  fi
  ln -s $f $HOME/
done
