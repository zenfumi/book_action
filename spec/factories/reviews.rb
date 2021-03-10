FactoryBot.define do
  factory :review do
    purpose { Faker::Lorem.word }
    memo { Faker::Lorem.paragraph }
    plan_now { Faker::Lorem.word }
    plan_future { Faker::Lorem.word }
  end
end



    # t.string "purpose"
    # t.text "memo"
    # t.string "plan_now"
    # t.string "plan_future"
    # t.string "spot_photo"
    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false
    # t.bigint "user_id", null: false
    # t.bigint "book_id", null: false
    # t.integer "completed"
    # t.index ["book_id"], name: "index_reviews_on_book_id"
    # t.index ["user_id"], name: "index_reviews_on_user_id"