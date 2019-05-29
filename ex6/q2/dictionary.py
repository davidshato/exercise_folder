#!/usr/bin/python3


import sys
import os
import json


# geting a string of and counting the amount of appearances of each character
# and exporing a json file with the results

usage = "USAGE: "+ os.path.basename(sys.argv[0])+" [STRING]"

if len(sys.argv) != 2:
    print(usage)
    sys.exit(1)

if sys.argv[1] == "":
    print(usage)
    sys.exit(1)


print(sys.argv)

string = str(sys.argv[1])
answer = {}

#iterating on the string and counting the amount of appearances
for char in string:
    if char in answer:
        answer[char] = answer[char] + 1
    else:
        answer[char] = 1
        
print(answer)

jsonfile = open("dictToJason.json","w")

# convering the dict that containing the answer to json format and writing it to the json file
jsonfile.write(json.dumps(answer, ensure_ascii=False))

jsonfile.close()


