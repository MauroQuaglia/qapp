require "active_support/core_ext/integer/time"

Rails.application.configure do
  Gem::Rails.production(config)
  Gem::Actionpack.production(config)
  Gem::ActiveSupport.production(config)
  Gem::SassRails.production(config)
end
