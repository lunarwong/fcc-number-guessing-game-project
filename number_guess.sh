#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME_INPUT

#get username in database
USERNAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME_INPUT' | xargs")
#get games played
GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME_INPUT' | xargs")
#get best game
BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME_INPUT' | xargs")

#no username in database
if [[ -z $USERNAME ]]
then
  echo -e "Welcome, $USERNAME_INPUT! It looks like this is your first time here."

  #store username in db
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME_INPUT')")

#username has been used
else
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

#game start

echo "Guess the secret number between 1 and 1000:"
read NUMBER_INPUT

#if not a number
while [[ ! $NUMBER_INPUT =~ ^[0-9]+$ ]]
do 
  echo "That is not an integer, guess again:"
  read NUMBER_INPUT
done

#lower and upper number
MIN=1
MAX=1000
#get random number
RANDOM_NUMBER=$(shuf -i $MIN-$MAX -n 1)
#start counting number of guess
NUMBER_OF_GUESSES=1

#is a number
#number is not in range
while [[ $NUMBER_INPUT -lt $MIN || $NUMBER_INPUT -gt $MAX ]]
do
  echo "Please enter an interger in range:"
  read NUMBER_INPUT
done

#input is less or greater than random number
while [[ $NUMBER_INPUT -ne $RANDOM_NUMBER ]]
do
  #input is less than random number
  if [[ $NUMBER_INPUT -lt $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    read NUMBER_INPUT

  #input is greater than random number
  elif [[ $NUMBER_INPUT -gt $RANDOM_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    read NUMBER_INPUT
  fi
  ((NUMBER_OF_GUESSES++))
done

#######################################
#input match with random number
#update best game guesses
if [[ -z $BEST_GAME || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
then
  UPDATE_BEST_GAME_GUESSES=$($PSQL "UPDATE users SET best_game=$NUMBER_OF_GUESSES WHERE username='$USERNAME_INPUT'")
fi

#update total number of games user has played
((GAMES_PLAYED++))
UPDATE_GAME_PLAYED=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED WHERE username='$USERNAME_INPUT'")


echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"

exit 
  