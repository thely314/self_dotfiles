#!/bin/bash

DotDIR="$PWD"

echo "Suggestion: place this dotfile directory in '$HOME'"

#backup file if old one exist
backup() {
	target=$1
	if [ -e "$target" ]; then
			if [ ! -L "$target" ]; then
					mv "$target" "$target.backup"
					echo "--- Backup your old '$target' file to '$target.backup'"
			fi
	fi
}

symlinkCreate() {
	file=$1
	link=$2
	if [ ! -e "$link" ]; then
			echo "--- Symlinking your new '$link'"
			ln -s $file $link
	fi
}

for name in .bashrc .zshrc; do
		if [ ! -d "$name" ]; then
				target="$HOME/$name"
				backup $target
				symlinkCreate $DotDIR/$name $target
		fi
done

echo "DotFiles symlinked successfully!"
