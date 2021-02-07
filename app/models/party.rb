class Party < ActiveRecord::Base 
    belongs_to many :users
    has_many :characters

    # validates_presence_of 
end 