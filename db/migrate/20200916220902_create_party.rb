class CreateParty < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :title
      t.string :dungeon_master
      t.string :player1
      t.string :player2
      t.string :player2
      t.string :player3
      t.string :player4
      t.string :player5
      t.string :player6
    end 
  end
end
