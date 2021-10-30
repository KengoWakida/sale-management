class PurchasesController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @purchases = Purchase.all
  end
  
  def new
    @purchase_stock = PurchaseStock.new
  end

  def create
    @purchase_stock = PurchaseStock.new(purchase_params)
    #Stock.create(stock_params)
    if @purchase_stock.valid?
      @purchase_stock.save
    else
      render :new
    end
  end

  private
  def purchase_params
    params.require(:purchase_stock).permit(:order_no, :item, :quantity, :price).merge(user_id: current_user.id)
  end

  #ef stock_params
  #  params.require(:purchase).permit(:item,:quantity)
  #end
end
