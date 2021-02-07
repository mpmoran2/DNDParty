class Partymem < ActiveRecord::Base 
    belongs_to :users
    has_many 

    validates_presence_of 
end 