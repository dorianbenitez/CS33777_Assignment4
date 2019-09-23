# file:    c_find.sh
# author:  Dorian Benitez - drb160130
# date:    09/22/2019
# purpose: CS 3377.0W4

# description: This script will remove all files named 'core' from the directory structure rooted at your home directory.

find ~ -name core -exec rm {} \;
