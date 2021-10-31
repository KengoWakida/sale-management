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
    @stock.update(stock_params)
    if @stock.valid?
      session[:item] = @stock[:item]
      session[:reduce] = params[:stock][:reduce]
      redirect_to new_sell_path
     else
       render :edit
    end
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.destroy
  end

  private
    def stock_params
      binding.pry
      params[:stock][:quantity] = (Stock.find(params[:id])[:quantity]).to_i - (params[:stock][:reduce]).to_i 
      params.require(:stock).permit(:item, :quantity)
    end
end
