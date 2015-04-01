require 'active_record'
require_relative 'battleship_model'
require 'pry'


#(placeholder for Release 2) while true do
  puts "Welcome to Battleship"
  puts "Select 1 to Start a New Game"

  # puts (placeholder for Release 3) "Select 2 to Load a Previous Game"
  # puts (placeholder for Release 2) "Select 3 to End program"
  launch_game = gets.chomp.to_i
# (placeholder for Release 2) end

case launch_game



  when 1

    one_player_hit_counter = []
    one_player_turn_counter = []

    two_player_hit_counter = []
    two_player_turn_counter = []

      puts "Each game can have two players"
      puts "Enter the first player's name"
      one_player_name = gets.chomp
      puts one_player_name

      Oneplayer.create(name:one_player_name)

      puts "Winning a match involves sinking both players battle ships. At the moment, " + one_player_name + " has two ships"
      puts Oneplayer.create(number_of_ship:2)

      puts "Enter 'Next' to continue"
      continue = gets.chomp

      puts "Enter the first player's 1st ship location. Any number between 1 - 20 will work"
      one_player_ship_one_position = gets.chomp

      puts Oneplayer.create(ship_one_position:one_player_ship_one_position)

      puts "Enter the first player's 2nd ship location. Any number between 1 - 20 will work"
      one_player_ship_two_position = gets.chomp

      puts Oneplayer.create(ship_two_position:one_player_ship_two_position)




      puts "Great! Let's now enter some information about the second player"




      puts "Enter the second player's name"
      two_player_name = gets.chomp

      puts two_player_name

      Twoplayer.create(name:two_player_name)

      puts "Enter the second player's 1st ship location. Any number between 1 - 20 will work"
      two_player_ship_one_position = gets.chomp

      puts Twoplayer.create(ship_one_position:two_player_ship_one_position)

      puts "Enter the second player's 2nd ship location. Any number between 1 - 20 will work"
      two_player_ship_two_position = gets.chomp

      puts Twoplayer.create(ship_two_position:two_player_ship_two_position)

      puts "Great! Let's start the match"



      loop  do

              puts one_player_name + ", where is " + two_player_name + " ship? Enter number 1 - 20"
              one_player_torpedo = gets.chomp

                  if Twoplayer.find_by(ship_one_position: one_player_torpedo.to_i) || Twoplayer.find_by(ship_two_position: one_player_torpedo.to_i)

                    puts "You've hit " + two_player_name + " ship"

                    one_player_hit_counter.push(1)
                    one_player_turn_counter.push(1)

                    puts   one_player_hit_counter.count

                    if   one_player_hit_counter.count > 0
                      puts "You have won! Congrats! It only took " + one_player_turn_counter.count.to_s + " turns and " + one_player_hit_counter.count.to_s + " hits"
                    else
                      puts "Great job! Now let's see what " + two_player_name + " can do!"

                    end #end of hit_counter.count

                  else
                    puts "You missed!"

                  end



              puts two_player_name + ", where is " + one_player_name + "ship? Enter number 1 - 20"
              two_player_torpedo = gets.chomp

                  if Oneplayer.find_by(ship_one_position: two_player_torpedo.to_i) || Oneplayer.find_by(ship_two_position: two_player_torpedo.to_i)

                    puts "You've hit " + two_player_name + " ship"

                    two_player_hit_counter.push(1)
                    two_player_turn_counter.push(1)

                    puts two_player_hit_counter

                    if   two_player_hit_counter > 0
                        puts "You have won! Congrats! It only took" + two_player_turn_counter.count.to_s + "turns and " + two_player_hit_counter.count.to_s + " hits"

                    else
                      puts "Great job! Now let's see what " + one_player_name + " can do!"

                    end

                  else

                  end
      end

end
binding.pry
