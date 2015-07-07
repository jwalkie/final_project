class ReportsController < ApplicationController
	before_action :authenticate_user!

	def index
		@food = Food.all 
		@report = Report.new 
	end

	def create
		#user.foods = Food.where(id: params[:foods])
		#@nutrients = Nutrient.joins(:foods).where(foods: {id: params[:foods]})

		current_user.nutrients = Nutrient.joins(:foods).where(foods: {id: params[:foods]})
		redirect_to nutrients_path
	end
end