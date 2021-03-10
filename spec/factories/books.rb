FactoryBot.define do
  factory :book do
    association :user, factory: :user
    title { "satou" }
    author { 32 }
  end
end