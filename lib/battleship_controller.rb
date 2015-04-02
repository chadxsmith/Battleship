require 'active_record'
require_relative 'battleship_model'
require 'pry'


loop  do

  puts "Welcome to Battleship"
  puts "Select 1 to Start a New Game"

  # puts (placeholder for Release 3) "Select 2 to Load a Previous Game"
  # puts (placeholder for Release 2) "Select 3 to End program"
  launch_game = gets.chomp.to_i
# (placeholder for Release 2) end

case launch_game



  when 1

      temp_ship = Ship.new
      player_one_ship_one = temp_ship.randomize
      puts player_one_ship_one

      temp_ship = Ship.new
      player_one_ship_two = temp_ship.randomize
      puts player_one_ship_two

      temp_ship = Ship.new
      player_two_ship_one = temp_ship.randomize
      puts player_two_ship_one

      temp_ship = Ship.new
      player_two_ship_two = temp_ship.randomize
      puts player_two_ship_two


      # puts one_player_ship_one_location


      one_player_hit_counter =  []
      one_player_turn_counter = []

      two_player_hit_counter =  []
      two_player_turn_counter = []

      puts "Each game can have two players"
      puts "Enter the first player's name"
      one_player_name = gets.chomp
      puts one_player_name
      Oneplayer.create(name:one_player_name)


      puts "Winning a match involves sinking both players battle ships; maintaining 5 spots each. At the moment, " + one_player_name + " has two ships"


      puts "Enter 'Next' to continue"
      continue = gets.chomp


      puts "Great! Let's now enter some information about the second player"


      puts "Enter the second player's name"
      two_player_name = gets.chomp


      puts two_player_name
      Twoplayer.create(name:two_player_name)


      puts "Great! Let's start the match"


      loop  do

              puts one_player_name + ", where is " + two_player_name + " ship? Enter number 1 - 100"
              one_player_torpedo = gets.chomp

                  if player_two_ship_one.include?(one_player_torpedo.to_i) || player_two_ship_two.include?(one_player_torpedo)


                    puts "You've hit " + two_player_name + " ship"

                    one_player_hit_counter.push(1)
                    one_player_turn_counter.push(1)

                    puts   one_player_hit_counter.count

                        if   one_player_hit_counter.count > 0
                          puts "You have won! Congrats! It only took " + one_player_turn_counter.count.to_s + " turns and " + one_player_hit_counter.count.to_s + " hits"
                          puts "Would you like to play again or quit the program?"
                          puts "Select 1 for return to main menu"
                          puts "Select 2 to to quit program"
                          play_again_or_quit = gets.chomp.to_i


                          case play_again_or_quit

                              when 1

                                def reset_tables
                                    ActiveRecord::Base.connection.tables.each do |table|
                                    ActiveRecord::Base.connection.drop_table(table)
                                  end
                                end

                                break

                              when 2

                                abort

                                break

                        end #end of play_again_or_quit






                        else
                          puts "Great job! Now let's see what " + two_player_name + " can do!"

                        end #end of one_player_hit_counter.count

                  else

                    puts "You missed!"

                  end #end of Twoplayer.find_by(ship_one_position: one_player_torpedo.to_i) || Twoplayer.find_by(ship_two_position: one_player_torpedo.to_i)




              puts two_player_name + ", where is " + one_player_name + "ship? Enter number 1 - 100"
              two_player_torpedo = gets.chomp

                  if player_one_ship_one.include?(two_player_torpedo) || player_one_ship_two.include?(two_player_torpedo)

                    puts "You've hit " + two_player_name + " ship"

                    two_player_hit_counter.push(1)
                    two_player_turn_counter.push(1)

                    puts two_player_hit_counter

                        if   two_player_hit_counter > 0
                            puts "You have won! Congrats! It only took" + two_player_turn_counter.count.to_s + "turns and " + two_player_hit_counter.count.to_s + " hits"

                        else
                          puts "Great job! Now let's see what " + one_player_name + " can do!"

                        end # two_player_hit_counter > 0

                  else
                      puts "You missed"

                  end #end Oneplayer.find_by(ship_one_position: two_player_torpedo.to_i) || Oneplayer.find_by(ship_two_position: two_player_torpedo.to_i)

      end #end of loop

  else

    break


end #end of case

end #end of loop
binding.pry
