class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :move, only: [ :show, :edit, :update, :destroy]

  def index
    @companies = Company.all.order("date")
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path(current_user)
    else
      render :new
    end
  end

  def show
  end

  def edit 
  end


  def update 
    if @company.update(company_params)
      redirect_to companies_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    if @company.destroy
      redirect_to companies_path(current_user)
    else
      render :show
    end
  end

  
  private

  def company_params
    params.require(:company).permit(:company_name, :explanation, :date, :url).merge(user_id: current_user.id)
  end

  def move 
    @company = Company.find(params[:id])
  end

end

