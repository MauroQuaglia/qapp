require "active_support/core_ext/integer/time"

Rails.application.configure do
  puts ciao
  Gem::Rails.test(config)
  Gem::Actionpack.test(config)
  Gem::ActiveSupport.test(config)
  Gem::SassRails.test(config)
end
