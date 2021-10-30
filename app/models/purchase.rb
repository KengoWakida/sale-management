class Purchase < ApplicationRecord
  has_one     :stock
  belongs_to  :user

  # with_options presence: true do
  #   validates :order_no, numericality: {only_integer: true}
  #   validates :item
  #   validates :quantity, numericality: {only_integer: true, greater_than_or_equal_to: 1}
  #   validates :price,    numericality: {only_integer: true, greater_than_or_equal_to: 1}
  # end
end
