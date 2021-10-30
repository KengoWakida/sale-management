FactoryBot.define do
  factory :purchase do
    order_no               {'01234567'}
    item                   {'部品'}
    quantity               {10}
    price                  {100}
    association           :user
  end
end
