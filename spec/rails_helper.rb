ENV['RAILS_ENV'] ||= 'test'
#require File.expand_path('../config/environment', __dir__)
require File.expand_path('../../config/environment', __FILE__)

if Rails.env.production?
  abort("The Rails environment is running in production mode!")
end

require_relative('../config/gem/rspec_rails')
require_relative('../config/gem/capybara')
require_relative('../config/gem/db_query_matcher')