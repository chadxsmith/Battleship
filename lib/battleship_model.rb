require 'pry'

# ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host =>"localhost",
  :database => "battleship_db"
)

def reset_tables
    ActiveRecord::Base.connection.tables.each do |table|
    ActiveRecord::Base.connection.drop_table(table)
  end
end

class Oneplayer < ActiveRecord::Base
  has_many :names
  validates_presence_of :name

end #end of Oneplayer

class Twoplayer < ActiveRecord::Base
  has_many :names
  validates_presence_of :name

end #end of Twoplayer

class Ship < ActiveRecord::Base


  def randomize

      ship_location_all =*(1..95)
      player_ship_start =  ship_location_all.shuffle.take(1)
      player_ship_start =  player_ship_start[0]
      # i reperesents our counter

  end


  def increment x
      i = 0

      #this section says make this object equal an arrary one item, which is ship's
      #starting location

      player_ship_locations = [x]

      #this section says until this condition is no longer true, do the stuff below
      while i < 4

      #this section says place ((player_ship_start + 1) into player_ship_locations
      player_ship_locations.push(x + 1)
      #this section condition ensures i increments to ensure infinit loops do not occur
        i = i + 1
        x = x + 1
      end

      return  player_ship_locations
  end #end of randomize



end #end of Ship


class CreateDB < ActiveRecord::Migration

  def initialize

    create_table :oneplayers do |column|
      column.string :name
      column.integer :hit_count
      column.integer :turn_count
      column.string  :ship_one_position
      column.string  :ship_two_position

    end #end of oneplayers

    create_table :twoplayers do |column|
      column.string :name
      column.integer :hit_count
      column.integer :turn_count
      column.string  :ship_one_position
      column.string  :ship_two_position

    end #end of twoplayers

    create_table :ships do |column|
      column.integer :location

    end


  end #end of initialize


end #end of CreateDB
# #
binding.pry
