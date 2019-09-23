# file:    journal.sh
# author:  Dorian Benitez - drb160130
# date:    09/22/2019
# purpose: CS 3377.0W4

# description: This script will verify that a user has write permission for a file named 
# "journal-file" in the user’s home directory, if such a file exists. If existent, will 
# allow user input for a journal entry.


# adds a journal entry named "journal-file" to home directory 
file=$HOME/journal-file	

# tests for file existence
if [ ! -e $file ]
then
        echo "File does not exist in current path."
        exit 1
fi

# executes if user has permission to write to file
if [ -w $file ]
then
        date >> $file
        echo "Enter name of person or group: "
        read name
        echo "$name" >> $file
        echo >> $file
        cat >> $file
        echo -e "\n ------------------------" >> $file
        echo >> $file
else
        echo "User does not have write permission for this file."
fi

exit 0

