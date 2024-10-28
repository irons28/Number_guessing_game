#!/bin/bash
# Number Guessing Game

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT+$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
else
  USER_INFO=$($PSQL "SELECT games_played, best_game from users WHERE username='$USERNAME'")
  IFS="|" read GAMES_PLAYED BEST_GAME <<< $USER_INFO
  ECHO "WELCOME BACK, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
echo "Guess the secret number between 1 and 1000:"
GUESS_COUNT=0

while [[ $GUESS -ne $SECRET_NUMBER ]]
do
  read GUESS
  ((GUESS_COUNT++))
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "Please enter a valid number."
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo "Its's higher than that, try again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, try again:"
  fi
done