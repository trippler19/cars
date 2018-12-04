#! /bin/bash
# cars.sh
#Nikki Trippler

echo "My Old Cars Inventory System"
stay=true
while $stay
do 
	echo "1. Enter a Car"
	echo "2. List the Cars"
	echo "q. Quit"
	read chooseOne
	case $chooseOne in
	"1")
		echo "Tell me about the car."
		echo "What is the year?"
		read carYear
		echo "Who makes the car?"
		read carMake
		echo "What is the model of the car?"
		read carModel
		carName=$carYear" "$carMake" "$carModel
		echo $carName >> "My_old_cars.txt"
		;;
	"2")
		sort -n "My_old_cars.txt"
		;;
	"q")
		stay=false
		;;
	esac
done
echo "Goodbye!"

