class PurchasesController < ApplicationController
  def index

  end
  
  def new
    @purchase = Purchase.new
  end

  def create
    Purchase.create(purchase_params)
  end

  private
  def purchase_params
    params.permit(:order_no, :item, :quantity, :price).merge(user_id: current_user.id)
  end

end
