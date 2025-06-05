#!/usr/bin/bash

if [ -z "$2" ]; then
  exit 1
fi

APP_FOCUS_NAME=$2

if [ -z "$3" ]; then
  APP_NAME=$APP_FOCUS_NAME
else
  APP_NAME=$3
fi

if [ "$1" = "goto" ]; then
  wlrctl window focus "$APP_FOCUS_NAME"
  if [ $? -eq 1 ]; then
    niri msg action spawn -- $APP_NAME
  else
    exit
  fi
  exit
fi
