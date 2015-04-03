# Battleship

The Battleship assignment required implementing the following process:  

#Release & User Stories: 
Success required breaking the problem into blocks of complexity. Each block, tagged as a Release, helped guide my development strategy. The releases included:

- Release 1: Allow User to play a battleship game, where location is predetermine by the user
- Release 2: Allow User to play a battlelship game, where location is randomized
- Release 3: Allow User to play a battleship game, with randomized locations, and quit and resume at leisure 

Upon defining each Release, User Stories were provided to ensure greater clarity throughout each phase. 

The Release and User Stories are avaliable here: https://trello.com/b/krHSNrtE/battleship

#Rspec Script: 
The bridge between problem solving strategy and code was my Rspec script. The material included: 

- player has two ships 
- player has name
- player has hits
- player has turns
- player has winner (boolean)
- player has ship_one_position
- player has ship_two_position
- match has two players 
- player, when starting match, has a winner (boolean) of nil 
- player, when starting match, has an ship_one_position of 5 random integers in sequential order up to 20 and when      starting match has an ship_two_position of 5 random integers in sequential order up to 20 
- match is complete when one player has 10 hits AND when one player's winner boolean equals true

(Note: The script guided Release 1 and 2)


#ERD:
After completing the previous stages, ERDs were created to define required data. Each Release's ERD included the following:

Release 1: 
Player 1 - Name, Number_of_ships, Hits, Turns, Ship_Position_One, Ship_Position_Two
Player 2 - Name, Number_of_ships, Hits, Turns, Ship_Position_One, Ship_Position_Two


Release 2:
Player 1 - Name, Hits, Turns
Player 2 - Name, Hits, Turns
Ship - Location 

Release 3:
Player 1 - Name, Hit_count, Turn_count, Ship_Position_One, Ship_Position_Two
Player 2 - Name, Hit_count, Turn_count, Ship_Position_One, Ship_Position_Two
Ship - Location 

#Pseudo Coding: 
Before developing for each Release, pseudo coding was utilized to draw solutions before typing commands. Leveraged drawings can be found here: https://drive.google.com/drive/u/1/#folders/0Bw3DcedwlFaVSlNmV243Q1ljeDQ


#Seed File:
During Release 2, a seed file was introduced for ship's locaiton. The approach introduced unforeseen complexity, when entering Release 3, and require revisiting ship's location as an array from 1 to 95

#Set Up Instructions:
To run the Battleship location, please enter execute the following
1) Download battleship_controller.rb and battleship_model.rb
2) Download PostgreSQL
3) Open PostgreSQL
4) Within the command line, run PSQL
5) Create a database called battleship_db
6) Within the model file, uncomment the line titled # binding.pry
7) Within the command line, run CreateDB.new 

#Models:
The program's Models included OnePlayer, TwoPlayer, and Ship

#Future Releases:
Future Releases will include the following functionality:
1) Load player data upon resuming game
2) Ensure random locations are unique 
3) Refactor variables into objects (ex: one_player_hit_counter to one_player.hit_counter) 

