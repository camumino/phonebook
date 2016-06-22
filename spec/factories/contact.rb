FactoryGirl.define do
  factory :contact do
    name "contact_name"
    surname "contact_surname"
    sequence :email do |n|
      "user#{n}@example.com"
    end
  end
end
