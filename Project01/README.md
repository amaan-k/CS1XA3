# CS 1XA3 Project01 - khana251
## Usage 
This script has to be executed using:
chmod +x CS1XA3/Project01/project_analyze.sh
./CS1XA3/Project01/project_analyze arg1 arg2 ...

The file is interactive and takes a user given input and does functions based on the user input.


## Feature 01 - File Type Count
Description: Prompts the user to input a file extension (.py, .sh, .log etc) and returns the number of files with the given extension in the directory.
Execution : 
1. Enter ./project_analyze.sh to execute the file
2. Enter 2
3. Enter a file extension
4. You will see the number of files of the extension on your screen.

## Feature 02 - File Tag
Description: Creates a file named with the tag given by the user. And looks for lines in a file with a name same as the tag that contain the tag in the form of a comment (starting with a #)
Execution:
1. Enter ./project_analyze.sh to execute the file
2. Enter 2
3. Enter any file tag
4. The file containing the file tag in the form of a comment will be returned.

## Feature 03 - File Size List
Description: Lists all the files in the repo and their sizes in a human readable format sorted from largest to smallest.
Execution: 
1. Enter ./project_analyze.sh to execute the file
2. Enter 3
3. The files will be returned in order from largest to smallest according to their file size.

## Feature 04 - Find all files with #FIXME in the last line
Description: Creates a file if it does not already exist called fixme.log in Project01 and lists all the files with #FIXME in the last line of the file in it.
Execution:
1. Enter ./project_analyze.sh to execute the file
2. Enter 4 when prompted
3. Enter "cat fixme.log" to display the contents of the file
4. The files containing #FIXME in the last line will be displayed on the screen

##Feature 05 - Checkout Latest Merge
Description: Find the most recent commit with the word 'merge' and automatically checkout that commit
Execution:
1. Enter ./project_analyze.sh to execute the file
2. Enter 5 when prompted
3. The latest commit will checkout

##Feature 06 - Backup and Delete/Restore (10 point feature)
Description: Gives the user the option to either Backup or restore files.
Execution:
1. Enter ./project_analyze.sh to execute the file
2. Enter 6 when prompted
-If the user chooses to backup
	Creates an empty directory called backup in Project01 or empties it if it or aready exists
	Finds all the files ending in .tmp and copies them to backup and deletes them from their original location
	Creates a file 'restore.log' in backup that contains the list of the pats of the files original locations.
- If the user chooses restore
	Using the file restore.log restores all the files to their original location
	If the file does not exists, return an error message

## Custom Feature - 1 REFERENCE https://stackoverflow.com/ 
Desription: The user gets to ask a fortune teller a question to which the fortune teller may give one of several different answers
Execution:
1. Enter ./project_analyze.sh to execute the file
2. Enter 7 when prompted
3. The user will be prompted to enter a question about your fortune
4. Enter a question
5. The program will generate a random number and return an answer corresponding to that number from a list of predetermined answers. 

## Custom Feature - 2
Description : The user inputs the name of contestants of a game show and the program outputs the details in a table format
Execution:
1. When prompted enter the names, age and authentication code of the players
2. The program will present the details of the contestants in the form of a table 
