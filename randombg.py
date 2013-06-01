#!/usr/bin/python 
# -*- coding: utf8 -*-
"""  
randombg.py
by holys <chendahui007@gmail.com>

= simple description =

Simple script to change background pictures randomly and regularly
Require setting up your crontab:

* * * * * /path/to/this_script.py > /path/to/logfile 2>&1
Set up above to suit your needs
Don't forget to change the access mode of the script to `a+x` or others

"""


import random
import subprocess
import os 
    
    
BACKGROUND = '/home/david/wallpaper/dell2312'
IGNORE_FILES = ['/home/david/wallpaper/dell2312/.directory']
    
    
def enumerate():                                                   
    global BACKGROUND
    file_collections = []
    for root, dirs, files in os.walk(BACKGROUND):
        for file in files:
            file_collections.append(os.path.join(root, file))
    return file_collections


def randombg():
    select_files = list(set(enumerate())-set(IGNORE_FILES))
    #subprocess.call(['feh', '--bg-scale', random.choice(select_files)])
    # make it run in cron job
    subprocess.call('export DISPLAY=:0; feh --bg-scale ' +
            random.choice(select_files), shell=True)

    
def main():
    randombg()


if __name__ == '__main__':
    main()
