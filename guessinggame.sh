#!/bin/bash
guessnum() {
    right_answer=$(ls -A|wc -l)
    while true;
    do
        echo "Hi! Guess the number of files are in the current directory?"
        read  number_guessed
        if [[ $number_guessed ]] && [ $number_guessed -eq $number_guessed 2>/dev/null ]
            then
                if [ $number_guessed -lt $right_answer ]
                then
                    echo "Try Again!.....Your guess is less than the actual number"
                continue;
                elif [ $number_guessed -gt $right_answer ]
                then
                    echo "Try Again!....Your guess is greater than the actual number"
                continue;
                else
                    echo "Congratulations!........Your guess is right!"
                break;
                fi
            else
                echo "Wrong input passed.Please pass integers only"
        fi
    done
}
guessnum

