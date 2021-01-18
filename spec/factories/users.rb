FactoryBot.define do
  factory :user do
    sequence(:id, 1) { |n| "#{n}" }
    username { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password { "test123" }
  end
end