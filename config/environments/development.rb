require "active_support/core_ext/integer/time"
Rails.application.configure do
  [Gem::Rails, Gem::Actionpack, Gem::ActiveSupport, Gem::SassRails].each { |gem| gem.development(config) }
end
