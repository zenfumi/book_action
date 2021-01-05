FactoryBot.define do
  factory :review do
    purpose { Faker::Lorem.word }
    memo { Faker::Lorem.paragraph }
    plan_now { Faker::Lorem.word }
    plan_future { Faker::Lorem.word }
    user
  end
end