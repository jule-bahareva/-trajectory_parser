!/bin/bash

if find 'trajectory.csv' 
then 
	echo "Error: The trajectory table already exists" 
	exit
else 
	echo "time,x,y,yaw" >> trajectory.csv
	echo "The trajectory table created"
fi

echo "Enter the path to the log in the volume (current folder)"
read logfile
echo "The log is located in: $logfile"

sed -n /Position/p $logfile > temp.txt
awk 'BEGIN{FS=" "; OFS=","} {print $1 " " $2,$7,$9,$11}' ./temp.txt >> trajectory.csv

echo "Check trajectory table"