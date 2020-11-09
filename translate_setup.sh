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

#copy script and make it executable
cp translate.sh ~/RetroPie/translate.sh
chmod +x ~/RetroPie/translate.sh

sudo apt install tesseract-ocr tesseract-ocr-jpn -y
#install translate-shell from source (# we use the source because this is working for Japanese)
git clone https://github.com/soimort/translate-shell
cd translate-shell/
make
make install
sudo make install
rm -rf translate-shell #remove the source