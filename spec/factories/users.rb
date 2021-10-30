FactoryBot.define do
  factory :user do
    name                  {'test'}
    email                 {'test@mail.com'}
    password              {'123456'}
    password_confirmation {password}
  end
end