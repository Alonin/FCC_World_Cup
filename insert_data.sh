#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
#GET OPPONENT_ID
do 
 if [[ $OPPONENT != "opponent" ]]
      then
      GET_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      echo $GET_OPPONENT_ID
      #if not found
      if [[ -z $GET_OPPONENT_ID ]]
      then
      #insert opponent 
      INSERT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
  
      if [[ $INSERT_TEAM == "INSERT 0 1" ]]
      then
      echo Inserted into teams, $OPPONENT
      fi
      #get new id
      GET_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      echo $GET_OPPONENT_ID
      fi   
      fi
#END GET OPPONENT ID

#GET WINNER ID 

  if [[ $WINNER != "winner" ]]
      then
      GET_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      echo $GET_WINNER_ID
      #if not found
      if [[ -z $GET_WINNER_ID ]]
      then
      #insert opponent 
      INSERT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  
      if [[ $INSERT_TEAM == "INSERT 0 1" ]]
      then
      echo Inserted into teams, $WINNER
      fi
      #get new id
      GET_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      echo $GET_WINNER_ID
      fi   
      fi
done
#END GET WINNER ID 

#INSERT GAMES
#YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
GET_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
GET_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
if [[ $YEAR != "year" && $ROUND != "round" && $WINNER != "winner" && $OPPONENT != "opponent" && $WINNER_GOALS != "winner_goals" && $OPPONENT_GOALS != "opponent_goals" ]]
then
INSERT_GAME=$($PSQL "INSERT INTO games(year, winner_id, opponent_id, winner_goals, opponent_goals, round) VALUES('$YEAR', '$GET_WINNER_ID', '$GET_OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS', '$ROUND')")
fi
done
