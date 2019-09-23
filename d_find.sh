# file:    d_find.sh
# author:  Dorian Benitez - drb160130
# date:    09/22/2019
# purpose: CS 3377.0W4

# description: This script will list the inode numbers of all files in the working 
# directory whose filenames end in .c.

find . -name "*.c" -ls
