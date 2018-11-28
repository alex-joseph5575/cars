#! /bin/bash
# cars.sh
# Alex Joseph

echo "Choose an option:"
while true
do
	echo -e  "1. Add a car"
	echo -e  "2. Check inventory"
	echo -e  "3. Exit program"
	read INTEGER

	case "$INTEGER" in
	   "1") echo "Year of the car?"
		read YEAR
		echo "Manufacturer?"
		read MAKE
		echo "Model?"
		read MODEL
		echo $YEAR:$MAKE:$MODEL >> My_old_cars;;
	   "2") sort My_old_cars;;
	   "3") echo "Goodbye"
		break;;
	   *) echo "Please input a valid number";;
	esac
done
