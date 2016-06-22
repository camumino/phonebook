FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "user#{n}@example.com"
    end
    password "123456789"
    password_confirmation "123456789"
  end
end
