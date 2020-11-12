# retropie-translator

While making this, they informed me that there is an official translation part in Retroarch.

So if you want the official solution, go to this thread :

https://retropie.org.uk/forum/topic/28461/translate-games-on-the-fly


-

Here is where I got the idea, you can read from here :

https://retropie.org.uk/forum/topic/28345/old-japanese-computer-appreciation-thread/353

This is an experiment to recognises Japanese text and translate from screenshots, made during emulating.

Default setup uses the "Print Screen key" for making screenshots.

Separate script are made for :

X - Google-translate

X - Bing-translate


-

# install :

git clone https://github.com/FollyMaddy/retropie-translator

cd retropie-translator

bash translate_setup.sh

(if updated, reinstall with bash translate_setup.sh, things will be added here)

-

# run the programm (still WIP) :

how to run this program together with emulationstation.

In evaluation statium it can be run like this :

/home/pi/RetroPie/translate-google.sh | emulationstation

or

/home/pi/RetroPie/translate-bing.sh | emulationstation


-

# better recognition:

When using libretro-cores a shader "xbr-lv1-noblend" is preffered for better recognition (but is slow).

(use hotkey "n" and "m" to change between shaders)


-

# issues :

Google limit, after a while,you get.

[ERROR] Google did not return results because rate limiting is in effect

[ERROR] Rate limiting

(too bad)


# update log :

10/11/2020 renamed translate.sh to translate-google.sh

10/11/2020 updated with translate-bing.sh script 

10/11/2020 added "festival" text to speech synthesizer as dependancy for the translate-bing.sh script in the translate_setup.sh

12/11/2020 added a forum-links about this idea early on and on how to use the original Retroarch transalator.



