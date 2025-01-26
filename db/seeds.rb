# db/seeds.rb

# Create sample users with unique emails using Faker
user1 = FactoryBot.create(:user, email: Faker::Internet.unique.email)
user2 = FactoryBot.create(:user, email: Faker::Internet.unique.email)
user3 = FactoryBot.create(:user, email: Faker::Internet.unique.email)
user4 = FactoryBot.create(:user, email: Faker::Internet.unique.email)

# Create listings using factories
20.times do
  FactoryBot.create(:listing, user: user1)
  FactoryBot.create(:listing, user: user2)
  FactoryBot.create(:listing, user: user3)
  FactoryBot.create(:listing, user: user4)
end
