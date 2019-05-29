#!/usr/bin/python3

import sys
import os

def USAGE():
    print(os.path.basename(sys.argv[0])+" USAGE: <WORD> <PATH>");
    sys.exit(1)

# checking the amount of arguments
if(len(sys.argv) != 3):
    USAGE()

# checking if the second arg is a file
if(not os.path.isfile(sys.argv[2])):
    USAGE()


# openning the file for reading
fileName = open(sys.argv[2],"r")
searchWord = sys.argv[1]
found = False

linesList = fileName.readlines()

#iterating on all the lines and searching the given word
for line in linesList:
    if(searchWord in line):
        found = True
        print(line[:-1])

if(not found):
    print(searchWord+" is not found in "+sys.argv[2])

#closing the file
fileName.close()
sys.exit(0)







