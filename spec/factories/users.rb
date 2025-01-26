# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    # Use Faker to generate a unique email
    email { Faker::Internet.unique.email }

    # Devise requires password and password confirmation
    password { 'password123' }
    password_confirmation { 'password123' }

    # You can add additional fields as needed
    # For example, if you want to create a username field (assuming it's required)
    # username { Faker::Internet.username }
  end
end
