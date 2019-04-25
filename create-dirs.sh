#!/bin/bash
echo "Create & Delete Directories"

## Create directories
dirname=""
dirs=()
for i in {0..2}
do
	dirname="dir-"$i # Create new directory name with index
	echo "Creating... /$dirname"
	mkdir $dirname
	dirs+=( $dirname )
done

## List the directories created
echo "dirs created: "
for d in ${dirs[@]}; do
	echo $d
done

## Remove the directories we created
echo "dirs removal: "
for d in ${dirs[@]}; do
	echo "Removing! $d"
	rm -r $d
done

## List the current directory after things are cleaned up
ls -al