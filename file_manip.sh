# file:    file_manip.sh
# author:  Dorian Benitez - drb160130
# date:    09/22/2019
# purpose: CS 3377.0W4

# description: This script takes the name of a directory as an argument and searches the file hierarchy of the directory for zero-length files. It then displays all such files
# to the user, and asks for a 'y' or 'n' response to removing the file from the directory, or automatically deletes them all if -f argument is passed.

# Script will exit execution if invalid number of arguments is passed 
if (( "$#" >  "2" || "$#" < "1" ))
then
	echo "Error: Only 1-2 arguments are expected. Please try again."
	exit 1
fi


# If user passes -f argument to command line, automatically removes all empty files from directory
if [ "$1" == "-f" ]
then
	echo "---------------------------------------------------------"
	echo -e "The following empty-files have been removed: \n"
	find $2 -empty -print -exec rm -f {} \;

# If -f argument not passed, asks user for deletion of each file individually.
else
	echo -e  "---------------------------------------------------------"
	echo "Remove following files? (y/n)"
	find $1 -empty -ok rm -f {} \;
fi

echo -e "\nProgram complete."
echo "---------------------------------------------------------"
