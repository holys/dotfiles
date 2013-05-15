#!/usr/bin/env python
# -*- coding: utf8 -*-

import random
import subprocess
import os 
import time 




BACKGROUND = '/home/david/wallpaper/dell2312'
IGNORE_FILES = ['/home/david/wallpaper/dell2312/.directory']
#TIME=10


def enumerate():
    global BACKGROUND
    file_collections = []
    for root, dirs, files in os.walk(BACKGROUND):
        for file in files:
            file_collections.append(os.path.join(root, file))
    return file_collections


def randombg():
    select_files = list(set(enumerate())-set(IGNORE_FILES))
    subprocess.call(['feh', '--bg-scale', random.choice(select_files)])

    
def main():
    while 1:
        randombg()
#        global TIME
        time.sleep(5)

if __name__ == '__main__':
    main()



