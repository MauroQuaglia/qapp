require_relative './gem/rails'
require_relative './gem/sass_rails'
require_relative './gem/actionpack'
require_relative './gem/activesupport'
require_relative './gem/railties'

require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
# require "active_job/railtie"
require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
# require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

#config.active_support.executor_around_test_case

module Qapp
  # https://edgeguides.rubyonrails.org/configuring.html#config-active-support-executor-around-test-case
  class Application < Rails::Application
    [Gem::Railties, Gem::Actionpack].each { |gem| gem.application(config) }

    #config.load_defaults(Rails::VERSION::STRING.to_f)

    #config.api_only = false
  end

end
