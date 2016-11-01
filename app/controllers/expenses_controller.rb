class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy, :log]

  def log
    @expense.value = 0
    respond_to do |format|
      if @expense.save
        format.html { redirect_to expenses_url, notice: "Expense #{@expense.store} was reset." }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { redirect_to @expense, notice: "Expense #{@expense.name} could not reset." }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /expenses
  # GET /expenses.json
  def index
<<<<<<< HEAD
    @expenses = Expense.order(:date)
=======
    @expenses = Expense.order(date: :desc)
>>>>>>> 58cd4fc7eadcdc2fe0e05f4bb7415e216fa127c0
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:store, :description, :date, :value)
    end
end
