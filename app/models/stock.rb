class Stock < ApplicationRecord
  belongs_to :purchase

  validates :item, presence: true
  validates :quantity, presence: true
end
