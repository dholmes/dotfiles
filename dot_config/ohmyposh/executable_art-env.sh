#!/usr/bin/env bash

if which art &> /dev/null; then
  (art envs --service | awk '{print $2}' | cut -d'-' -f1 | sort | uniq | paste -s -d, -) 2>/dev/null
fi
