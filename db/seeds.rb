# frozen_string_literal: true

# メインのサンプルユーザーを1人作成する
User.create!(name: 'Example User',
             email: 'takaki55730317@gmail.com',
             password: 'password123',
             password_confirmation: 'password123',
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

# 追加のユーザーとまとめて生成する
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n + 1}@railstutorial.org"
  password = 'password'
  User.create!(name:,
               email:,
               password:,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end
