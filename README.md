# XAutomation
Automation Scripts for Regular Tasks
------
#### Xbing
* Extract random/current image from Bing-JSON source and set that image as desktop-background.
    [![asciicast](https://asciinema.org/a/cluwriwyhvvd491dxmurg8uoz.png)](https://asciinema.org/a/cluwriwyhvvd491dxmurg8uo)

#### Xshop
* This will extract top 5 results from Amazon,Snapdeal and Flipkart for a given search query in CLI.
   [![asciicast](https://asciinema.org/a/82fs8136fh0j8uit55tygb9zo.png)](https://asciinema.org/a/82fs8136fh0j8uit55tygb9zo)

#### Xweb
* It is loaded with numerous web scraping task such as getting wikipedia and dictionary results on terminal,opening google,youtube,google-map directly with given query in Commmand line args with args like --google,--youtube,--wiki,--dictionary etc.   
    [![asciicast](https://asciinema.org/a/3ga9yfom6afi7j6xhnjkfddrn.png)](https://asciinema.org/a/3ga9yfom6afi7j6xhnjkfddrn)

#### Xplay
* A terminal/CLI utility to play any song in your music directory with filter like title, --artist, --genre.
    [![asciicast](https://asciinema.org/a/3mrqtrmkfcjhqet3f4mz4l3td.png)](https://asciinema.org/a/3mrqtrmkfcjhqet3f4mz4l3td)
* **Pull entire repositry with:**
 `git clone https://github.com/zuck007/XAutomation.git`

## Installation
  * all of these script-code starts with the line `#!/usr/bin/env python`, which should be executed with
    * `$ chmod +x script-name`.
  * set up `PATH` for the directry containing Executable scripts.

  ``
  $ export PATH="/home/username/dir/to/XAutomation/
  ``

* **Packages/Modules**
    * `pip install bs4` [BeautifulSoup Module](http://www.crummy.com/software/BeautifulSoup/) for Web-Scraping.
    * `pip install requests` [Requests Module](http://docs.python-requests.org/en/master/) for http requests.
    * `pip install mutagen` [Mutagen Module](https://mutagen.readthedocs.org/en/latest/) for reading Meta-data from mp3 files.

## LICENCE
 [GNU GPL v3](https://github.com/zuck007/XAutomation/blob/master/LICENSE)
