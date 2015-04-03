require 'rspec'

describe Player do
	it “has one name”
	it “has many ships”
  it “has many hits”
	it “has many turns”
	it “has one ship_one_position”
	it “has one ship_two_position"
end

describe Match do
	it “has many Player"
end

describe Battle do
	it “Player, when starting match, has winner (boolean) of nil”
	it “Player, when starting match, has an ship_one_position of 5 random integers 	in sequential order up to 20 AND when starting match has an ship_two_position 	of 5 random integers in sequential order up to 20”
	it “Match, is complete, when one Player has 10 hits AND when one Player 	winner (boolean) equals true "
end



# player has two ships
#
# player has name
#
# player has hits
#
# player has turns
#
# player has ship_one_position
#
# player has ship_two_position
#
# match has two players
#
# player, when starting match, has an ship_one_position of 5 random integers
# in sequential order up to 20 and when starting match has an ship_two_position of
# 5 random integers in sequential order up to 20
#
# match is complete when one player has 10 hits
