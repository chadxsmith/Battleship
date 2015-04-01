ActiveRecord::Base.logger = Logger.new(STDOUT)

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

end #end of Oneplayer

class Twoplayer < ActiveRecord::Base

end #end of Twoplayer



class CreateDB < ActiveRecord::Migration

  def initialize

    create_table :oneplayers do |column|
      column.string :name
      column.integer :number_of_ship
      column.string  :ship_one_position
      column.string  :ship_two_position

    end #end of oneplayers

    create_table :twoplayers do |column|
      column.string :name
      column.integer :number_of_ship
      column.integer :hit
      column.integer :turn
      column.string  :ship_one_position
      column.string  :ship_two_position

    end #end of twoplayers


  end #end of initialize


end #end of CreateDB
