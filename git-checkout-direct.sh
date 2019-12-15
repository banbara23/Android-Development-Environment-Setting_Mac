#!/bin/sh

exec git checkout -B "$1" origin/"$1"
