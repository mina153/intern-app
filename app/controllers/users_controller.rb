class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :move, only: [:show]
  
    def show
      @companies = Company.all.order("created_at DESC")
    end
    

    private

    def company_params
      params.permit(:company_name, :explanation, :date).merge(user_id: current_user.id)
    end

  
    def move 
      @company = Company.find(params[:id])
    end
end





# before_action :authenticate_user!, except: [:index, :show]
#   before_action :move, only: [:show, :edit, :update, :destroy]
#   before_action :prohibit, only: [:edit, :update, :destroy]

#   def index
#     @items = Item.all.order("created_at DESC")
#   end

#   def new
#     @item = Item.new
#   end

#   def create
#     @item = Item.new(item_params)
#     if @item.save
#       redirect_to root_path
#     else
#       render :new
#     end
#   end

#   def show
#   end

#   def edit
#     if @item.purchase.present?
#       redirect_to root_path 
#     end
#   end

#   def update
#     if @item.update(item_params)
#       redirect_to item_path(@item.id)
#     else
#       render :edit
#     end
#   end

#   def destroy
#     if @item.destroy
#       redirect_to root_path
#     else
#       render :show
#     end
#   end
  

#   private

#   def item_params
#     params.require(:item).permit(:item_name, :explanation, :category_id, :state_id, :shipping_fee_id, :shipping_prefecture_id, :shipping_day_id, :price, :image).merge(user_id: current_user.id)
#   end

#   def move
#     @item = Item.find(params[:id])
#   end

#   def prohibit
#     redirect_to root_path unless current_user.id == @item.user_id 
#   end

# end


