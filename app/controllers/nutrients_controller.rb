class NutrientsController < ApplicationController
	def index
		@nutrients = current_user.missing_nutrients
	end
end