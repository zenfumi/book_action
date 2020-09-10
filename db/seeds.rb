# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# メインのサンプルユーザーを1人作成する
User.create!(username:  "Example User",
             email: "ys5050@gmail.com",
             password:              "ys5050eb",
             password_confirmation: "ys5050eb")

# 追加のユーザーをまとめて生成する
99.times do |n|
  username  = Faker::Name.name
  email = "ys5050-#{n+1}@gmail.com"
  password = "password"
  User.create!(username:  username,
               email: email,
               password:              password,
               password_confirmation: password)
end