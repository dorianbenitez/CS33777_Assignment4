# file:    b_find.sh
# author:  Dorian Benitez - drb160130
# date:    09/22/2019
# purpose: CS 3377.0W4

# description: This script will list all files you have read access to on the system that
# are larger than 1 megabyte.

find / -size +1024k
