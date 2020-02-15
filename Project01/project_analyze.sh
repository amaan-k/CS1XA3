#!/bin/bash

echo " Pick 1 for file type count"
echo " Pick 2 for File tag"
echo " Pick 3 for File Size List"
read numbr

if [ "$numbr" -eq 1 ] ; then
	#File Type Count
	cd ~/private/CS1XA3
	echo "Enter a file extension:"
	read ext
	numcount=`find . -type f -name "*$ext" | wc -l`
	echo "The number of files: $numcount"
fi

if [ "$numbr" -eq 2 ] ; then
	#File tag
	cd ..
	echo "Enter a file tag: "
	read Tag
	if [ -e Project01/"$Tag.log" ] ; then
		rm Project01/"$Tag.log"
	fi
	touch Project01/"$Tag.log"
	lines=`find . -name "*.py" | xargs grep -h "#"* | grep -h "$Tag"`
	echo "$lines" > Project01/"$Tag.log"
fi

if [ "$numbr" -eq 3 ] ; then
	#File Size List
	cd ..
	result="$(ls -R -pRshal | grep -v / | grep -v total | sort -r)"
	echo "$result"
fi
