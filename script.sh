#!/bin/bash

# simple script that takes two optional arguments containing a word each, then prints them out

x=
y=

while getopts ":x:y:z:" opt; do
	case $opt in
		x)
			IFS=',' read -ra V <<< "$OPTARG"
			for i in "${V[@]}"; do
				if [[ ! "$i" =~ ^[A-Za-z]+$ ]]; then
					echo "Invalid argument for option \"-x\" ($OPTARG)" >&2
					exit 1
				fi
			done
			x="$OPTARG"
			;;
		y)
			IFS=',' read -ra V <<< "$OPTARG"
			for i in "${V[@]}"; do
				if [[ ! "$i" =~ ^[A-Za-z]+$ ]]; then
					echo "Invalid argument for option \"-y\" ($OPTARG)" >&2
					exit 1
				fi
			done
			y="$OPTARG"
			;;
	esac
done

echo "x = $x"
echo "y = $y"
