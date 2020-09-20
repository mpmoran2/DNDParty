class CreateCharacter < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string  :name
      t.string  :npc_pc
      t.integer :age
      t.string  :gender
      t.string  :height
      t.string  :race
      t.string  :subrace
      t.string  :job
      t.string  :subjob
      t.string  :bg
      t.string  :alignment
      t.string  :deity
      t.integer :level
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.string  :skill1
      t.string  :skill2
      t.string  :skill3
      t.string  :skill4
      t.string  :skill5
      t.string  :skill6
      t.string  :skill7
      t.string  :skill8
      t.string  :skill9
      t.string  :skill10
      t.string  :skill11
      t.string  :skill12
      t.string  :skill13
      t.string  :skill14
      t.string  :skill15
      t.string  :skill16
      t.string  :skill17
      t.string  :skill18
      t.text    :bio
      t.integer :user_id
    end
  end
end
