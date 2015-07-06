class Food < ActiveRecord::Base
	has_and_belongs_to_many :nutrients
	has_and_belongs_to_many :users
end
