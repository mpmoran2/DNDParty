class Partymem < ActiveRecord::Base 
    belongs_to :users through :characters
   

    validates_presence_of 
end 