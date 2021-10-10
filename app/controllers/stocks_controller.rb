class StocksController < ApplicationController
  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.destroy
  end

end
