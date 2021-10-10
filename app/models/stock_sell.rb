class StockSell
  include ActiveModel::Model
  attr_accessor :item, :quantity, :price, :user_id

  with_options presence: true
    validates :item
    validates :quantity, numericality: {only_integer: true}
    validates :price,  numericality: {only_integer: true}
    validates :user_id
end

