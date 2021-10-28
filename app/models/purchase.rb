class Purchase < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    VALID_ORDER_NO_REGEX = /\A[a-zA-Z0-9]+\z/
    validates :order_no, format: {with: VALID_ORDER_NO_REGEX ,message: "is invalid" }
    validates :item
    validates :quantity, numericality: {only_integer: true, greater_than_or_equal_to: 1}
    validates :price,    numericality: {only_integer: true, greater_than_or_equal_to: 1}
    validates :user_id
  end
end
