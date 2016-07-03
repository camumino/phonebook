FactoryGirl.define do
  factory :contact do
    name "contact_name"
    surname "contact_surname"
    type 0
    
    sequence :email do |n|
      "user#{n}@example.com"
    end

    user
  end
end
