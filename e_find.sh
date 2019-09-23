# file:    e_find.sh
# author:  Dorian Benitez - drb160130
# date:    09/22/2019
# purpose: CS 3377.0W4

# description: This script will list all files you have read access to on the root 
# filesystem that have been modified in the last 30 days.

find / -xdev -mtime -30
