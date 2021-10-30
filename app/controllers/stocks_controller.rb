class StocksController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @stocks = Stock.all
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def update
    @stock = Stock.find(params[:id])
    session[:item] = @stock[:item]
    session[:quantity] = @stock[:quantity]
    session[:price] = @stock[:price]
    @stock.update(stock_params)
    if @stock.valid?
      
      @stock.save
      redirect_to new_sell_path
    else
      render :edit
    end
    #stock = Stock.find(params[:id])
    #stock.quantity =  (Stock.find(params[:id])[:quantity]).to_i - (params.require(:stock)[:quantity]).to_i
    #stock.update(stock_params)
    #Sell.create(sell_params)
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.destroy
  end

  private
    #def stock_params
    #  binding.pry
    #  params.require(:stock_sell).permit(:item, :price,:quantity).merge(user_id: current_user.id)
    #end
  
    def stock_params
      params[:stock][:quantity] = (Stock.find(params[:id])[:quantity]).to_i - (params[:stock][:quantity]).to_i 
      params.require(:stock).permit(:item, :quantity)


    end

    #def sell_params
    #  params.require(:stock).permit(:item, :quantity, :price).merge(user_id: current_user.id)
    #end

   # def calc_quantity #在庫の数量計算 入力した値を計算してUPDATEする方法を調べる
   #   quantity =  (Stock.find(params[:id])[:quantity]).to_i - (params.require(:stock)[:quantity]).to_i
   #   {:quantity => quantity }
   # end

end
