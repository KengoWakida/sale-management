class PurchasesController < ApplicationController
  def index

  end
  
  def new
    @purchase = Purchase.new
  end

  def create
    @purchase =Purchase.create(purchase_params)
    #binding.pry
  end

  private
  def purchase_params
    params.require(:purchase).permit(:order_no, :item, :quantity, :price).merge(user_id: current_user.id)
  end

end
