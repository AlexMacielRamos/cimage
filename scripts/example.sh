#!/usr/bin/bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'This is an example shell script'
echo 'Scripts here will run during build if specified in recipe.yml'



#echo $PWD
if test -d usr/bin; then
   if test ! -e usr/bin/aafile.txt; then
        #mkdir -p "$HOME"/.config
        
        echo 'se logro' > usr/bin/aafile.txt
        echo 'se creo archivo con exito'
   fi
fi
