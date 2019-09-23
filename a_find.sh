# file:    a_find.sh
# author:  Dorian Benitez - drb160130
# date:    09/22/2019
# purpose: CS 3377.0W4

# description: This script will list all files in the working directory and all 
# subdirectories that have been modified within the last 24 hours.

find . -mtime -1
