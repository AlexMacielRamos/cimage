#!/usr/bin/bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'This is an example shell script'
echo 'Scripts here will run during build if specified in recipe.yml'

echo $PWD
if test -d "$HOME"; then
   if test ! -d "$HOME"/.config; then
        mkdir -p "$HOME"/.config
        echo 'se creo archivo y directorio con exito'
        echo 'se logro' > success.txt
    fi
fi
