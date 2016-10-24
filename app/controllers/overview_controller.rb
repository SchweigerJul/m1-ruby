class OverviewController < ApplicationController

  def index
    @overview = Expense.where("date > ?", Date.current.beginning_of_month).sum(:value)
	@limit = Limit.all
  end
  
  def show
    @overview = Expense.where("date > ?", Date.current.beginning_of_month).sum(:value)
  end
end
