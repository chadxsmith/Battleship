require 'active_record'
require_relative 'battleship_model'
require 'pry'


loop  do

  puts "Welcome to Battleship"
  puts "Select 1 to Start a New Game"
  puts "Select 2 to Resume Previous Game"

  launch_game = gets.chomp.to_i

case launch_game


  when 1

      temp_ship = Ship.new
      player_one_ship_one = temp_ship.randomize
      player_one_ship_one = temp_ship.increment(player_one_ship_one)

      temp_ship = Ship.new
      player_one_ship_two = temp_ship.randomize
      player_one_ship_two = temp_ship.increment(player_one_ship_two)

      temp_ship = Ship.new
      player_two_ship_one = temp_ship.randomize
      player_two_ship_one = temp_ship.increment(player_two_ship_one)

      temp_ship = Ship.new
      player_two_ship_two = temp_ship.randomize
      player_two_ship_two = temp_ship.increment(player_two_ship_two)

      puts "Each game can have two players"
      puts "Enter the first player's name"
      one_player_name = gets.chomp
      one_player = Oneplayer.create(name:one_player_name,ship_one_position:player_one_ship_one, ship_two_position:player_one_ship_two, hit_count:0, turn_count:0)


      puts "Winning a match involves sinking both players battle ships; maintaining 5 spots each. At the moment, " + one_player_name + " has two ships"

      puts "Enter 'Next' to continue"
      continue = gets.chomp

      puts "Great! Let's now enter some information about the second player"

      puts "Enter the second player's name"
      two_player_name = gets.chomp

      puts two_player_name
      two_player = Twoplayer.create(name:two_player_name,ship_one_position:player_two_ship_one, ship_two_position:player_two_ship_two, hit_count:0, turn_count:0)

      puts "Ready? Let's start the match"

      loop  do

              puts one_player_name + ", where is " + two_player_name + " ship? Enter number 1 - 100"
              one_player_torpedo = gets.chomp

                  if player_two_ship_one.include?(one_player_torpedo.to_i) || player_two_ship_two.include?(one_player_torpedo.to_i)


                    puts "You've hit " + two_player_name + " ship"

                    one_player.hit_count += 1
                    one_player.save


                    one_player.turn_count += 1
                    one_player.save


                        if   one_player.hit_count  > 3
                          puts "You have won! Congrats! It only took " +   one_player.turn_count.to_s + " turns and " + one_player.hit_count.to_s + " hits"
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

                    one_player.turn_count += 1
                    one_player.save


                  end #end of Twoplayer.find_by(ship_one_position: one_player_torpedo.to_i) || Twoplayer.find_by(ship_two_position: one_player_torpedo.to_i)


              puts two_player_name + ", where is " + one_player_name + "ship? Enter number 1 - 100"
              two_player_torpedo = gets.chomp

                  if player_one_ship_one.include?(two_player_torpedo.to_i) || player_one_ship_two.include?(two_player_torpedo.to_i)

                    puts "You've hit " + one_player_name + " ship"

                    # two_player_hit_counter.push(1)

                    two_player.hit_count += 1
                    two_player.save

                    two_player.turn_count += 1
                    two_player.save

                    # two_player_turn_counter.push(1)


                        if   two_player.hit_count > 3
                            puts "You have won! Congrats! It only took" + two_player.turn_count.to_s + "turns and " + two_player.hit_count.to_s + " hits"
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
                          puts "Great job! Now let's see what " + one_player_name + " can do!"

                        end # two_player_hit_counter > 0

                  else
                      puts "You missed. You guys have been playing pretty hard. Would you like to quit and resume later?"
                      puts "Select 1 to quit"
                      puts "Select 2 to continue playing"
                      exit_var = gets.chomp

                      two_player.turn_count += 1
                      two_player.save

                      if exit_var == 1

                          puts "See you later! You can start again at any point"
                          abort

                      else


                      end

                  end #end Oneplayer.find_by(ship_one_position: two_player_torpedo.to_i) || Oneplayer.find_by(ship_two_position: two_player_torpedo.to_i)


      end #end of loop

    when 2

    # binding.pry

    puts player1 = Oneplayer.all

        player1_name = player1[0].name.to_s
        player1_hit = player1[0].hit_count.to_s
        player1_turn = player1[0].turn_count.to_s
        player1_ship_one_position = player1[0].ship_one_position.to_s
        player1_ship_two_position = player1[0].ship_two_position.to_s


    puts player2 = Oneplayer.all

        player2_name = player2[0].name.to_s
        player2_hit = player2[0].hit_count.to_s
        player2_turn = player2[0].turn_count.to_s
        player2_ship_one_position = player2[0].ship_one_position.to_s
        player2_ship_one_position = player2[0].ship_two_position.to_s


    puts "Awesome! You guys are back! Let's play again"

    puts player1_name + " you're up!"

    loop do

      puts player1_name + ", where is " + player2_name  + " ship? Enter number 1 - 100"
      one_player_torpedo = gets.chomp


    end #end of loop


end #end of case

end #end of loop
