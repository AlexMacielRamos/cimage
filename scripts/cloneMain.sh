#!/usr/bin/bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'This is an example shell script'
echo 'Scripts here will run during build if specified in recipe.yml'

cd usr/share

pip config set global.target /usr/lib/python3.11/site-packages
echo 'se cambio el directorio de pip'
pip install pyside6
pip install virtualenv
mkdir myvenv
python -m venv myvenv/venv1

git clone https://github.com/AlexMacielRamos/scriptTest.git
echo 'se clono repositorio con exito'
#cd scriptTest
#git fetch origin

cd myvenv
ls
cd venv1
ls


#echo $PWD
#if test -d usr; then
   #if test ! -e usr/bin/aafile.txt; then
     #mkdir -p "$HOME"/.config
     
     #echo 'se logro' > usr/bin/aafile.txt
     #echo 'se creo archivo con exito'
   #fi
#fi
