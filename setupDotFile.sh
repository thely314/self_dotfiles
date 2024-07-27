#!/bin/bash

DotFileDir="~/dotfile"

ln -s "$DotFileDir/.bashrc" "$HOME/.bashrc"

echo "DotFiles symlinked successfully!"
