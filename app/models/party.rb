class Party < ActiveRecord::Base 
    has_many :character
    has_many :user, through: :character
end 