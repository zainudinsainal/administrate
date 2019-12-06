require "database_cleaner"

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each, type: :feature) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, type: :feature, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each, type: :feature) do
    DatabaseCleaner.start
  end

  config.after(:each, type: :feature) do
    DatabaseCleaner.clean
  end
end
