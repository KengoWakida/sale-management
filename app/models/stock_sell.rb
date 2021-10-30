class StockSell
  include ActiveModel::Model
  attr_accessor :item, :quantity, :price, :user_id

  with_options presence: true do
    validates :item
    validates :quantity, numericality: {only_integer: true}
    validates :price,  numericality: {only_integer: true}
    validates :user_id
  end

  def save
    stock = Stock.update(item: item, quantity: quantity)
    Sell.create(item: item, price: price, quantity: quantity, user_id: current_user.id)
  end
end

