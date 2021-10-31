class StockSell
  include ActiveModel::Model
  attr_accessor :sell_no,:item, :quantity, :price, :user_id

  with_options presence: true do
    validates :sell_no,numericality: {only_integer: true}
    validates :item
    validates :quantity, numericality: {only_integer: true}
    validates :price,  numericality: {only_integer: true}
    validates :user_id
  end

  def save
    stock = Stock.update(item: item, quantity: quantity)
    Sell.create(sell_no: sell_no,item: item, price: price, quantity: quantity, user_id: current_user.id)
  end
end

