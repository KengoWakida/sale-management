class SellsController < ApplicationController
  def new 
    @stock = Stock.find(params[:stock_id])
  end

  
end
