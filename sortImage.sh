#!/bin/bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

# Before committing, run https://www.shellcheck.net/

#Changed because https://github.com/koalaman/shellcheck/wiki/SC2044
for image in $(find images/ -name "*.jpg" -o -name "*.png" );
do
	printf "* %s" "$image"
	image_dir=$(echo "$image" | cut -d'/' -f2 | cut -d'_' -f1)
	mkdir -p "sorted/$image_dir"
	cp "$image" "sorted/$image_dir"
done