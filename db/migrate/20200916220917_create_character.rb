class CreateCharacter < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.string :username
      t.string :image
      t.integer :age 
      t.string :height
      t.string :race 
      t.string :job 
      t.integer :level
      t.string :alignment 
      t.string :bg
      t.text :party_title
      t.text :bio      
    end
  end
end
