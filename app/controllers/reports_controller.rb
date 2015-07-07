class ReportsController < ApplicationController
	before_action :authenticate_user!

def index
	@food = Food.all 
	@report = Report.new 
end

def show
end

end