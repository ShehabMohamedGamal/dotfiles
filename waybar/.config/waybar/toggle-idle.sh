#!/usr/bin/env bash

pkill hypridle ||uwsm app -- hypridle
kill -SIGRTMIN+10 $(pgrep waybar)