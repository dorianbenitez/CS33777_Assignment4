# file:    date_man.sh
# author:  Dorian Benitez - drb160130
# date:    09/22/2019
# purpose: CS 3377.0W4

# description: This script will display the time every 15 seconds for a number of iterations declared by the user.

echo "How many times would you like to see the current time?"
read num_times

while (($num_times > 0))
do
	clear	
	echo "Current time is" `date +"%r"`
	sleep 15
	((num_times=num_times - 1))
done
echo "Program complete."
