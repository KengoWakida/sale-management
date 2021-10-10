class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
   
  end
  
  def new
    @purchase = Purchase.new
  end

  def create
    @purchase =Purchase.create(purchase_params)
    Stock.create(stock_params)
  end

  private
  def purchase_params
    params.require(:purchase).permit(:order_no, :item, :quantity, :price).merge(user_id: current_user.id)
  end

  def stock_params
    params.require(:purchase).permit(:item,:quantity)
  end
end
