require "active_support/core_ext/integer/time"

Rails.application.configure do
  Gem::Rails.development(config)
  Gem::Actionpack.development(config)
  Gem::ActiveSupport.development(config)
  Gem::SassRails.development(config)
end
