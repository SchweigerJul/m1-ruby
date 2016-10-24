class LimitController < ApplicationController

  before_action :set_limit, only: [:edit, :update, :destroy]

  # GET /limit
  def index
    @limit = Limit.all  ## @limit change to @limits (Plural)
  end

  # GET /limit/0
  def show
  end

  # GET /expenses/new
  def new
    @limit = Limit.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @limit = Limit.new(limit_params)

    respond_to do |format|
      if @limit.save
        format.html { redirect_to @limit, notice: 'Limit was successfully created.' }
        format.json { render :show, status: :created, location: @limit }
      else
        format.html { render :new }
        format.json { render json: @limit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @limit.update(limit_params)
        format.html { redirect_to @limit, notice: 'Limit was successfully updated.' }
        format.json { render :show, status: :ok, location: @limit }
      else
        format.html { render :edit }
        format.json { render json: @limit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @limit.destroy
    respond_to do |format|
      format.html { redirect_to limit_url, notice: 'Limit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_limit
      @limit = Limit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def limit_params
      params.require(:limit, :expireDate).permit( :expenses)
    end

end
