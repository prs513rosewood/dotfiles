#!/bin/bash

function monifuck() {
  xrandr --output DP1-2 --off
  sleep 5
  xrandr --output DP1-2 --auto --right-of DP1-1
}
