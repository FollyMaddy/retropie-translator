#!/bin/bash

# Version : 1
# Use : 
# this script checks for screenshots, then recognises text and translates the text.
# How to run (3 options):
# - run it from the terminal with : bash <program>
# - run it from the terminal with : ./<program> (program has to be made executable)
# - dubbleclick in file-explorer and choose open in terminal. (program has to be made executable)
#
# Author : Folkert van der Meulen
# Date   : 9/11/2020 
#
# Dependancies :
# tesseract-ocr tesseract-ocr-jpn translate-shell
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#Choose which workdirectory you want to use (2 options):
#
# if we want to use "F8" in retroarch
# (advised to use, when using an OSD overlay)
#workdir=$HOME/.config/retroarch/screenshots 
#
# if we want to use the regular "Print Screen" key
# (then this program can also be used for everything, including standalone emulators)
# (not advise to use, when using an OSD overlay)
workdir=$HOME

# use a done directory for re-use or evaluation of translations
donedir=$HOME/RetroPie/translations
# always try to make this directory
mkdir -p $donedir

while :
do
    sleep 1    
    #if png in directory then try to convert to text
    listpng=$(ls $workdir/*.png 2>/dev/null) # suppress the error messages (2>/dev/null)
    if [ -n "$listpng" ]
    then
        #wait for files
        sleep 1
        for files in $listpng
        do
            #recognise japanese charachters (-l jpn)
            tesseract "$files" "$files" -l jpn
            # output in english (-t en) and play translation over audio (-p)
            translated=$(trans -e bing -brief -i "$files.txt" -t en)
            echo $translated
            echo "(SayText \"$translated\")" > "$files.translation.txt"
            festival "$files.translation.txt" -b
            #move the files after translation
            mv "$files" "$donedir"; mv "$files.txt" "$donedir"; mv "$files.translation.txt" "$donedir"
            #uncomment the rm line to remove the files after conversion
            #comment the rm line if you want to keep them for re-use or evaluation
            #rm $donedir/*.* 2>/dev/null  # suppress the error messages (2>/dev/null)
        done    
    fi
done

