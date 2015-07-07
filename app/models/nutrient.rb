class Nutrient < ActiveRecord::Base
	has_and_belongs_to_many :foods
	has_and_belongs_to_many :users
end
