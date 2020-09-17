class User < ActiveRecord::Base 
    has_many :character 
    has_many :party, through: :character
end