#!/bin/bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

# Before committing, run https://www.shellcheck.net/

#Changed because https://github.com/koalaman/shellcheck/wiki/SC2044

while IFS= read -r -d '' image
do
	if [ -f "$image" ]; then
		image_dir=$(echo "$image" | cut -d'/' -f2 | cut -d'_' -f1)
		echo "moving $image -> sorted/$image_dir/"
		mkdir -p "sorted/$image_dir"
		cp "$image" "sorted/$image_dir"
	fi
done <   <(find images/ -type f -print0 -name "*.jpg" -o -name "*.png" )