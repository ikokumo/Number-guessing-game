#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
#generate random number 
SECRET_NUMBER=$((1 + RANDOM % 1000))
#ask guest for username
echo "Enter your username:"
read USERNAME
#get username from and game plays database
USER_GAMES=$($PSQL "SELECT games_played, best_game FROM users WHERE username = '$USERNAME'")
#if username does not exist
if [[ -z $USER_GAMES ]]
then 
echo "Welcome, $USERNAME! It looks like this is your first time here."
else 
#if user exist, print games so far
IFS="|" read GAMES_PLAYED BEST_GAME <<< $USER_GAMES
echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
echo "Guess the secret number between 1 and 1000:"
while  [[ -z $GUESS || $GUESS != $SECRET_NUMBER ]]
do
read GUESS
#if guess is not empty
if [[ ! -z $GUESS ]]
then
#add to number of guesses
GUESS_TIMES=$((GUESS_TIMES+1))
#if guess is not an Integer
if [[ ! $GUESS =~ ^[0-9]+$ ]]
then
echo "That is not an integer, guess again:"
#if guess is higher
elif [[ $GUESS -gt $SECRET_NUMBER ]]
then
echo "It's higher than that, guess again:"
#if guess is lower
elif [[ $GUESS -lt $SECRET_NUMBER ]]
then
echo "It's lower than that, guess again:"
fi
fi
done
echo "You guessed it in $GUESS_TIMES tries. The secret number was $SECRET_NUMBER. Nice job!"

#if user is new and no game history
if [[ -z $USER_GAMES ]]
then
#create new user game plays
GAMEPLAYS=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 1, $GUESS_TIMES)")
#if it's not new best play
elif [[ $GUESS_TIMES -gt $BEST_GAME ]]
then 
#update games played by the user
GAMEPLAYS=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$USERNAME'")
else
#if user is not new and game is the best, update games played and best game
GAMEPLAYS=$($PSQL "UPDATE users SET games_played = games_played + 1, best_game = $GUESS_TIMES WHERE username = '$USERNAME'")
fi



