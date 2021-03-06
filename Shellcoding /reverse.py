#!/usr/bin/env python2

import sys

print(sys.argv[1])
str1 = sys.argv[1]

if(len(str1) % 4 != 0):
    str2 = "/"*((len(str1)%4))
    str1 = str2 + str1
print("Size of the string : ",len(str1))
size = len(str1)
t = size/4
#print(t)
#print(str1[0:4])
#print(str1[4:8])
print(str1)
print("Printing all the strings ")

#i = 0

for i in range(t):
    x1 = 4* i
    x2 = 4 * i + 4
    t = str1[x1:x2]
    print(t[::-1].encode('hex'))

    

