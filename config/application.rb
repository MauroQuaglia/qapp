require_relative './gem/rails'
require_relative './gem/sass_rails'
require_relative './gem/actionpack'
require_relative './gem/activesupport'
require_relative './gem/railties'

require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "action_mailbox/engine"


require "action_cable/engine"
require "rails/test_unit/railtie"
require "active_storage/engine"
require "action_mailer/railtie"
require "action_text/engine"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

#config.active_support.executor_around_test_case

module Qapp
  # https://guides.rubyonrails.org/configuring.html#versioned-default-values
  class Application < Rails::Application
    # For enable /404 /500 custom page
    config.exceptions_app = routes

    #con un dominio bisognerebbe differenziarlo per ambiente
    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

    [Gem::Railties, Gem::Actionpack].each { |gem| gem.application(config) }
  end

end
