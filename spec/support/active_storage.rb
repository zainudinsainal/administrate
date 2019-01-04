RSpec.configure do |config|
  config.around(:each, active_storage: true) do |example|
    if defined? ActiveStorage
      example.run
    end
  end
end
