require 'rspec/rails'

RSpec.configure do |config|

  config.mock_with(:rspec) do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.order = :random
  config.formatter = :progress

  config.use_active_record = true
  config.use_transactional_fixtures = true

  # If you enable ActiveRecord support you should unncomment these lines,
  # note if you'd prefer not to run each example within a transaction, you
  # should set use_transactional_fixtures to false.
  #
  #config.fixture_path = "#{::Rails.root}/spec/fixtures"


  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, type: :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")
end
