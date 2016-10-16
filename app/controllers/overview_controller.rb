class OverviewController < ApplicationController

  def index
    @overview = Expense.where("date > ?", Date.current.beginning_of_month).sum(:value)
  end
  
end
