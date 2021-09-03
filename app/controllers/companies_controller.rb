class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :move, only: [:show,  :edit, :update, :destroy]
  before_action :prohibit, only: [:edit, :update, :destroy]

  def index
    @companies = Company.all.order("created_at DESC")
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to user_companies_path(current_user)
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
      redirect_to user_companies_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    if @company.destroy
      redirect_to user_path(current_user)
    else
      render :show
    end
  end

  
  private

  def company_params
    params.permit(:company_name, :explanation, :date).merge(user_id: current_user.id)
  end

  def move 
    @company = Company.find(params[:id])
  end

  def prohibit
    redirect_to interns_index_path unless current_user.id == @company.user_id 
  end
end
