class PlansController < ApplicationController

  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
    @boxes = @plan.boxes
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      flash[:notice] = "Successfully created"
      redirect_to plans_path
    else
      render 'new'
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :price, :description)
  end


end
