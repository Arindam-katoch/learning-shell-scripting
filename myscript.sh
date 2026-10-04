#!/bin/bash

# ECHO COMMAND
echo "Hello World!"

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores allowed
NAME="Arindam"
echo "My name is $NAME"
# Alternative curly brace syntax:
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your name: " USER_NAME
echo "Hello $USER_NAME, nice to meet you!"

# SIMPLE IF STATEMENT
if [ "$NAME" == "Arindam" ]; then
    echo "Your name is Arindam"
fi

# IF-ELSE
if [ "$NAME" == "Arindam" ]; then
    echo "Your name is Arindam"
else
    echo "Your name is not Arindam"
fi

# ELSE-IF (elif)
if [ "$NAME" == "Arindam" ]; then
    echo "Your name is Arindam"
elif [ "$NAME" == "Katoch" ]; then
    echo "Your name is Katoch"
else
    echo "Your name is not Arindam or Katoch"
fi

# COMPARISONS
# -eq, -ne, -gt, -ge, -lt, -le
NUM1=31
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]; then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS
# -d (directory), -e (exists), -f (regular file), -r (readable), etc.
FILE="test.txt"
if [ -f "$FILE" ]; then
    echo "$FILE is a file"
else
    echo "$FILE is not a file"
fi

# CASE STATEMENT
read -p "Are you 21 or over? Y/N: " ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "You can have a beer "
        ;;
    [nN] | [nN][oO])
        echo "Sorry, no drinking"
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac

# SIMPLE FOR LOOP
NAMES="Arindam Alpha Beta Charlie"
for NAME in $NAMES; do
    echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES; do
    echo "Renaming $FILE to new-$FILE"
    mv "$FILE" "${NEW}-${FILE}"
done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE; do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-1.txt"

# BASIC FUNCTION
function sayHello() {
    echo "Hello World"
}
sayHello

# FUNCTION WITH POSITIONAL PARAMETERS
function greet() {
    echo "Hello, I am $1 and I am $2"
}
greet "Arindam" "20"

# CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch hello/world.txt
echo "Hello World" >> hello/world.txt
echo "Created hello/world.txt"
