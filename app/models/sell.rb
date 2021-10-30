class Sell < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :item
    validates :quantity, numericality: {only_integer: true, greater_than_or_equal_to: 1}
    validates :price,    numericality: {only_integer: true, greater_than_or_equal_to: 1}
  end
end
