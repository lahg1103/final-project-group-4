FactoryBot.define do
  factory :user do
      sequence(:email) { |n| "person-#{n}@example.com" }
      password { '123greetings' }
      sequence(:account_id) { '1' }
  end

  factory :ta do 
    sequence(:email) { "ta_test@ta.com" }
    password { '123greetings' }
    sequence(:account_id) { '0' }
  end
end