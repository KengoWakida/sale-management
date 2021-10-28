FactoryBot.define do
  factory :purchase do
    order_no               {'A1234567'}
    item                   {'部品'}
    quantity               {10}
    price                  {100}
  end
end
