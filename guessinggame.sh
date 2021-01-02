#!/bin/bash
echo "Welcome to the Guessing Game! How many files are in the current directory? Enter a number."
read input_num

function list_num 
{ 
   dir_num=$(ls | wc -l)
   echo $dir_num
}
num_dir=$(list_num)
#echo $num_dir

while [[ $input_num -ne $num_dir ]]
do
   if [[ $input_num -lt $num_dir ]]
     then
     echo "The number you enter is too low."
   elif [[ $input_num -gt $num_dir ]]
     then
     echo "The number you enter is too high. "
   fi 
   echo "Please try again. Enter a number."
   read input_num
done

echo "Congratulations! Your guess is right. Exiting the program.."