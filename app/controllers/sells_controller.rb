class SellsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @sells = Sell.all
  end

  def new 
    @sell = Sell.new
    # @sell.sell_no = session[:sell_no]
    @sell.item = session[:item]
    @sell.quantity = session[:reduce]
    # @sell.price = session[:price]
  end

   def create
     @sell = Sell.create(sell_params)
     if @sell.save 
      redirect_to root_path
     else
      render :new 
     end
   end

   private
     def sell_params
       params.require(:sell).permit(:sell_no,:item, :quantity, :price).merge(user_id: current_user.id)
     end
end
