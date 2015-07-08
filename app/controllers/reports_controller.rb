class ReportsController < ApplicationController
	before_action :authenticate_user!

	def index
		@nutrients = current_user.nutrients
	end

	def new
		#@food = Food.all 
		@food = Food.all.order(:name).group_by(&:category)
		@report = Report.new 
	end

	def create
		#user.foods = Food.where(id: params[:foods])
		#@nutrients = Nutrient.joins(:foods).where(foods: {id: params[:foods]})

		current_user.nutrients = Nutrient.joins(:foods).where(foods: {id: params[:foods]}).uniq
		redirect_to reports_path
	end
end