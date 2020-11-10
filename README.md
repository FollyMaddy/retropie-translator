# retropie-translator

Recognises Japanese text and translates from screenshots made during emulating

Default setup uses the "Print Screen key" for making screenshots.


-

install :

git clone https://github.com/FollyMaddy/retropie-translator

cd retropie-translator

bash translate_setup.sh

(if updated, reinstall with bash translate_setup.sh, things will be added here)

-

still WIP :

how to run this program together with emulationstation.

In evaluation statium it can be run like this :

/home/pi/RetroPie/translate-google.sh | emulationstation

or

/home/pi/RetroPie/translate-bing.sh | emulationstation


-

better recognition:

When using libretro-cores a shader "xbr-lv1-noblend" is preffered for better recognition (but is slow).

(use hotkey "n" and "m" to change between shaders)


-

issues :

Google limit, after a while,you get.

[ERROR] Google did not return results because rate limiting is in effect

[ERROR] Rate limiting

(too bad)



