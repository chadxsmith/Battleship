require 'rspec'
require 'active_record'
require_relative 'spec_helper'
require_relative '../lib/battleship_model'
require_relative '../lib/battleship_controller'



describe Oneplayer do
	it “has one name” do
    oneplayer = Oneplayer.new("Jake",2, 0, 0, 1,1)
    expect(oneplayer.name).to eq("Jake")
  end
end


# 	it “has many ship”
#   it “has many hit”
# 	it “has many turn”
# 	it “has one ship_one_position”
# 	it “has one ship_two_position"
#   oneplayer = Oneplayer.new("Jake",2, 0, 0, 1,1)
#   expect(oneplayer.class).to eq(Oneplayer)
#   expect(oneplayer.name).to eq("Jake")
#   expect(oneplayer.ship).to eq(2)
#   expect(oneplayer.hit).to eq(0)
#   expect(oneplayer.turn).to eq(0)
#   expect(oneplayer.ship_one_position).to eq(1)
#   expect(oneplayer.ship_two_position).to eq(1)
# end



# describe Battle do
# 	it “Player, when starting match, has winner (boolean) of nil”
# 	it “Player, when starting match, has an ship_one_position of 5 random integers 	in sequential order up to 20 AND when starting match has an ship_two_position 	of 5 random integers in sequential order up to 20”
# 	it “Match, is complete, when one Player has 10 hits AND when one Player 	winner (boolean) equals true "
# end


#
#
#   describe "#battleship"
# end # end of Game
