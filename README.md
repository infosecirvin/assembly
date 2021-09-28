# Assembly
Respository for the "Introduction to Assembly" course by Irvin Lemus. Please see the course for instructions on the code saved here.

## Note
I used this script to make my life easier in compiling code for "Some Assembly Required" levels. Feel free to use it as well.

#!/bin/bash
echo "Run this within the folder that your .asm files are stored."
echo "What is the name of the asm file (don't need ".asm", just the file name)?"
read file
nasm -f elf $file.asm; ld -m elf_i386 -o $file $file.o
./$file
