class ReportsController < ApplicationController
	before_action :authenticate_user!

	def index
		@nutrients = current_user.missing_nutrients
	end

	def new
		#@food = Food.all 
		@food = Food.all.order(:name).group_by(&:category)
		@report = Report.new 
	end

	def create
		#user.foods = Food.where(id: params[:foods])
		#@nutrients = Nutrient.joins(:foods).where(foods: {id: params[:foods]})
		@user = current_user 
		@user.nutrients = Nutrient.joins(:foods).where(foods: {id: params[:foods]}).uniq
		@user.save

	    redirect_to reports_path

		if @user.save
	    	ReportMailer.report_email(@user).deliver_now
	    end 


	end
end 
