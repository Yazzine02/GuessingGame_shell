#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    local file_count=$(ls -l | grep "^-" | wc -l)
    echo "$file_count"
}

# Main function for the guessing game
guessing_game() {
    local correct_guess=false
    local actual_count=$(get_file_count)

    while [ "$correct_guess" != true ]; do
        # Prompt user for guess
        read -p "How many files are in the current directory? Enter your guess: " user_guess

        # Check if the guess is correct
        if [ "$user_guess" -eq "$actual_count" ]; then
            correct_guess=true
            echo "Congratulations! Your guess is correct."
        elif [ "$user_guess" -lt "$actual_count" ]; then
            echo "Too low! Try again."
        else
            echo "Too high! Try again."
        fi
    done
}

# Run the guessing game
guessing_game

