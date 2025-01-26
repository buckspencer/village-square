# spec/rails_helper.rb
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rspec/rails'

# Add additional requires below this line. Rails is not loaded until this point!
# You can require other libraries, such as FactoryBot, Faker, etc.
require 'factory_bot_rails'

# Configure RSpec
RSpec.configure do |config|
  # Allow FactoryBot methods to be used without the FactoryBot prefix
  config.include FactoryBot::Syntax::Methods

  # Set the default test framework to use parallel testing (optional)
  config.parallelize(workers: :number_of_processors)

  # Enable fixtures (optional, but FactoryBot is preferred)
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # Run tests in random order to surface order dependencies.
  config.order = :random
  Kernel.srand config.seed

  # Automatically mix in different behaviours to your tests based on their file location.
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!

  # Keep the test environment isolated and separate from production
  config.use_transactional_fixtures = true

  # Add more helper methods to be used by all tests here...
end
