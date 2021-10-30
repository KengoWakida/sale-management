class Stock < ApplicationRecord
  belongs_to :user

  validates :item, presence: true
  validates :quantity, presence: true
end
