class Nutrient < ActiveRecord::Base
	has_and_belongs_to_many: foods
end
