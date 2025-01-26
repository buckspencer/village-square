# spec/factories/listings.rb
FactoryBot.define do
  factory :listing do
    title { Faker::Commerce.product_name }  # Dynamic product name
    description { Faker::Lorem.paragraph }  # Dynamic description
    price { Faker::Commerce.price(range: 10.0..1000.0) }  # Random price between 10 and 1000
    hourly_rate { Faker::Commerce.price(range: 10.0..100.0) }  # Random hourly rate between 10 and 100
    duration { Faker::Number.between(from: 1, to: 24) }  # Random duration between 1 and 24 hours
    listing_type { [:item, :service, :event].sample }  # Random listing type (item, service, event)
    category { Faker::Commerce.department }  # Random category (e.g., "electronics", "furniture")
    location { Faker::Address.city }  # Random city name
    status { [:active, :sold, :archived].sample }  # Random status (active, sold, archived)
    additional_info { { "key" => Faker::Lorem.word, "value" => Faker::Lorem.sentence }.to_json }

    association :user  # Associates with a user (assuming a user factory exists)
  end
end
