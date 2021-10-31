class PurchaseStock
  include ActiveModel::Model
  attr_accessor :order_no, :item,:quantity, :price, :user_id

  with_options presence: true do
    validates :order_no, numericality: {only_integer: true}
    validates :item
    validates :quantity, numericality: {only_integer: true, greater_than_or_equal_to: 1}
    validates :price,    numericality: {only_integer: true, greater_than_or_equal_to: 1}
    validates :user_id
  end

  def save
    #購入情報を保存し、purchaseに代入する
    purchase = Purchase.create(order_no: order_no, item: item, quantity: quantity, price: price,user_id: user_id)
    #在庫情報を保存する
    Stock.create(item: item, quantity: quantity,purchase_id: purchase.id)
  end
end