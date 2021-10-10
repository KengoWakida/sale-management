class SellsController < ApplicationController
  def new 
    @sell = Stock.find(params[:stock_id])
    
  end

  
end
