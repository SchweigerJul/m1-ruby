class OverviewController < ApplicationController
  skip_before_action :authorize, only: [:create, :new]
  def index
    @overview = Expense.where("date > ?", Date.current.beginning_of_month).sum(:value)
	@limits = Limit.order(expireDate: :desc).where( "expireDate > ?", Date.current).all
	@expenses = Expense.all
  end

  def show
  end
end
