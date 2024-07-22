#!/bin/bash

DotFileDir="."

ln -s "$DotFileDir/.bashrc" "$HOME/.bashrc"

echo "DotFiles symlinked successfully!"
