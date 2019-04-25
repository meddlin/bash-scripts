#!/bin/bash
echo "Create & Crawl Directories"

## Create directories
dirname=""
for i in {0..2}
do
	dirname="dir-"$i # Create new directory name with index
	echo "Creating... /$dirname"
	mkdir $dirname
done