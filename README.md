# XAutomation
Automation Scripts for Regular Tasks
------

#### Xbing
* Extract random/current image from Bing-JSON source and set that image as desktop-background.

  ```
  $ Xbing -h
  usage: Xbing [-h] [-r] [-v | -q]

  Extracting Random Bing Images

  optional arguments:
  -h, --help     show this help message and exit
  -r, --random   Random image selection from last 15 days
  -v, --verbose  To Show Downloading and Setting Process
  -q, --quiet    Do not display anything on Terminal
  ```

#### Xcode
* Its a compiler(not a real one but using existing commands for compilation) + code template generator for C,C++,Python,Java & Ruby.

  ```
  $ Xcode -h
  Usage: [-h] [-c COMPILE] [-s SET-TEMPLATE] [-g GENERATE-TEMPLATE]

  Xcode is compiler(for multiple language depends on file extension) & Code Template Generator and its not related to that OSX IDE !

  Optional Arguments:
  -h , --help : show this help message and exit

   -c COMPILE , --compile COMPILE : compile the given file w.r.t  extension

   -s SET-TEMPLATE , --set-template SET-TEMPLATE : replace default CodeTemplate file with given file

   -g GENERATE-TEMPLATE , --generate-template GENERATE-TEMPLATE : copy default code template with given name w.r.t file extension in current directory

   Examples:
   1. Xcode -h
   <show this whole message>
   2. Xcode --compile gcd.c
   <compile this file & genrate object code with name gcd>
   <i.e gcc gcd.c -o gcd >
   3. Xcode --set-template ~/MyTemplates/defaulttemp.cpp
   < replace default CPPtemplate.cpp with given file >
   4. Xcode -g  modexp.py
   < create new file modexp.py and copy all contents of default python template into it.>

  ```

#### Xplay
* A terminal/CLI utility to play any song in your music directory with filter like title, --artist, --genre.
  ```
  $ Xplay -h
  usage: Xplay [-h] [-g GENRE [GENRE ...]] [-a ARTIST [ARTIST ...]]
             [-t TITLE [TITLE ...]] [-q]

  Play any mp3 song according to song's title,artist,genre etc.

  optional arguments:
    -h, --help            show this help message and exit
    -g GENRE [GENRE ...], --genre GENRE [GENRE ...]
                          play song of the given genre
    -a ARTIST [ARTIST ...], --artist ARTIST [ARTIST ...]
                          play song of the given artist
    -t TITLE [TITLE ...], --title TITLE [TITLE ...]
                          play song of the given title
    -q, --query           display result for query followed by artist/genre
                        name.

  Just Type Xplay without any argument for random song selection
  ```

#### Xshop
* This will extract top 5 results from Amazon,Snapdeal and Flipkart for a given search query in CLI.
   [![asciicast](https://asciinema.org/a/82fs8136fh0j8uit55tygb9zo.png)](https://asciinema.org/a/82fs8136fh0j8uit55tygb9zo)

#### Xweb
* It is loaded with numerous web scraping task such as getting wikipedia and dictionary results on terminal,opening google,youtube,google-map directly with given query in Commmand line args with args like --google,--youtube,--wiki,--dictionary etc.   
  ```
  $ Xweb -h
  usage: Xweb [-h] [-g GOOGLE [GOOGLE ...]] [-yt YOUTUBE [YOUTUBE ...]]
            [-wk WIKI] [-dict DICTIONARY] [-o] [-map GOOGLEMAP]
            [-ud URBANDICT [URBANDICT ...]] [-w WEATHER] [-s SHORTNER]
            [default [default ...]]

  Terminal Utility to extract/open webpages

  positional arguments:
    default               directly open webpage if domain name is specified else
                          will give google search result

  optional arguments:
    -h, --help            show this help message and exit
    -g GOOGLE [GOOGLE ...], --google GOOGLE [GOOGLE ...]
                        open browser with google search result for given args
    -yt YOUTUBE [YOUTUBE ...], --youtube YOUTUBE [YOUTUBE ...]
                        open browser with youtube search result for given args
    -wk WIKI, --wiki WIKI
                        extract wikipedia search/page result for given args
                        and display on terminal
    -dict DICTIONARY, --dictionary DICTIONARY
                          extract dictionary definition for given word and
                          display on terminal
    -o, --open            Open Webpage instead of displaying result on terminal;
                         use with -wk/--wiki and -d/--dict
    -map GOOGLEMAP, --googlemap GOOGLEMAP
                          open browser with Google-Map search result
    -ud URBANDICT [URBANDICT ...], --urbandict URBANDICT [URBANDICT ...]
                          definition from urbandictionary.com
    -w WEATHER, --weather WEATHER
                          display weather info for given city
    -s SHORTNER, --shortner SHORTNER
                          Shortene urls with bit.ly
  ```

## Installation
* Copy and paste this line on terminal (Bash version >4.0).

  ``
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/zuck007/XAutomation/master/install.sh)"
  ``
## LICENCE
 [GNU GPL v3](https://github.com/zuck007/XAutomation/blob/master/LICENSE)
