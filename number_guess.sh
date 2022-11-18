#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$(($RANDOM%1000+1))
LOOP () {
while [[ $NUMBER_CHOSE < $SECRET_NUMBER ]]
do
COUNTER=$((COUNTER+1))
echo "It's lower than that, guess again:"
read NUMBER_CHOSE
done
while [[ $NUMBER_CHOSE > $SECRET_NUMBER ]]
do
COUNTER=$((COUNTER+1))
echo "It's higher than that, guess again:"
read NUMBER_CHOSE
done
}
echo -e "\nEnter your username:"
read USERNAME


GET_USERNAME=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")
if [[ -z $GET_USERNAME ]]
then
INSERT_USERNAME=$($PSQL "INSERT INTO users(username, games_played) VALUES ('$USERNAME', 0);")
  if [[ $INSERT_USERNAME == 'INSERT 0 1' ]]
  then
  echo "Welcome, $USERNAME! It looks like this is your first time here." 
  fi
else
UPDATE=$($PSQL "UPDATE users SET games_played=games_played+1 WHERE username='$USERNAME';")
GAMES_PLAYED=$($PSQL "SELECT games_played  FROM users WHERE username='$USERNAME';")
BEST_GAME=$($PSQL"SELECT MIN(best_game) FROM users WHERE username='$USERNAME';")
  if [[ $UPDATE == 'UPDATE 1' ]]
  then
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses." 
  fi
echo
fi
echo -e "\nGuess the secret number between 1 and 1000:"
read NUMBER_CHOSE
if [[ ! $NUMBER_CHOSE =~ ^[0-9]+$ ]]
then  
echo "That is not an integer, guess again:"
read NUMBER_CHOSE
fi
echo $SECRET_NUMBER
COUNTER=1
while [[ $NUMBER_CHOSE != $SECRET_NUMBER ]] 
do
LOOP
done
if [[ $NUMBER_CHOSE == $SECRET_NUMBER ]]
then
echo $COUNTER 
  

echo "You guessed it in $COUNTER tries. The secret number was $SECRET_NUMBER. Nice job!"
fi


if [[ -z $BEST_GAME || $COUNTER < $BEST_GAME ]]
then
UPDATE_BEST_GAME=$($PSQL"UPDATE users SET best_game=$COUNTER WHERE username='$USERNAME';")
fi



