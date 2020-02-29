#!/bin/bash

echo " Pick 1 for file type count"
echo " Pick 2 for File tag"
echo " Pick 3 for File Size List"
echo " Pick 4 for files with #FIXME"
echo " Pick 5 to Checkout Latest Merge"
echo " Pick 6 to Backup and Delete/Restore"
echo " Pick 7 to know your fortune"
echo " Pick 8 to start the game show"
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

if [ "$numbr" -eq 4 ] ; then
	# return FIXME log
	cd ..
	if [ -e Project01/fixme.log ] ; then
                rm Project01/fixme.log
        fi
        touch Project01/fixme.log
	find ./ -type f |while read file; do
		tail -1 "${file}"|grep -q "#FIXME" && echo ${file}
	done >Project01/fixme.log
fi

if [ "$numbr" -eq 5 ] ; then
	git log --all --grep='merge' -n 1 | grep -e ".{40}" | git checkout
fi

if [ "$numbr" -eq 6 ] ; then
	#Backup and Delete/Restore
	echo "Enter 1 to backup the files"
	echo "enter 2 to Restore the files"
	read choice
	if [ "$choice" -eq 1 ] ; then
		if  [ -d "backup" ] ; then
			rm -r backup
		fi
		mkdir backup
		cd ..
		fname=$(find ../ -type f -name "*tmp")
		cd Project01
		cd backup
		for file in "$fname" ; do
			echo "$file" > "restore.log"
			f1=$(basename "$file")
			echo "$fi"
		done
	fi
fi

if [ "$numbr" -eq 7 ] ; then
	#Custom 1 - Fortune teller
	poss_ans=("Yes, you are at your peak fortune. You shall succeed"
 		 "I see darkness. Your future is in danger. Gimme 20 bucks for a bright future"
 		 "The right for that would be tomorrow after brushing your teeth"
 		 "OMG OMG OMG! YES. Its a YES"
 		 "Meet me by the shore for your answer at 12 PM tomorrow"
 		 "You know the answer. ;)"
 		 "I'm hungry can't answer."
 		 "Yes. But you have to jump on one leg 10 times"
 		 "You have come to the wrong place I am a cat in disguise")

	echo "Oh! Magic 8 Ball, Please Tell Me True..." ; echo ""
	echo "What is your question? (Only ask questions that make sense) "
	read my_question

	ans=$(( $RANDOM % 20 ))

	echo "The answer to your question is: "
	echo " ${poss_ans[$ans]}" ; echo ""
	echo "That would be 100 bucks please"
fi

if [ "$numbr" -eq 8 ] ; then
	#Custom 2 -
	echo "Welcome to the game show!"
	echo "Please verify contestant names.."
	echo "Enter names of 3 contestents"
	read name1
	read name2
	read name3
	echo "Enter their age in the same order"
	read age1
	read age2
	read age3
	echo "Enter their authentication code"
	read code1
	read code2
	read code3
	names=("$name1" "$name2" "$name3")
	age=("$age1" "$age2" "$age3")
	authentication_code=("$code1" "$code2" "$code3")
	no_of_players=3

	for((i=0;i<no_of_players;i++))
	do
    		echo ${names[$i]} $'\x1d' ${age[$i]} $'\x1d' ${authentication_code[$i]}
	done | column -t -s$'\x1d'
fi
