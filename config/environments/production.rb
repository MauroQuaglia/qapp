require "active_support/core_ext/integer/time"

Rails.application.configure do
  Gem::Rails.production(config)
  Gem::Actionpack.production(config)

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Log disallowed deprecations.
  config.active_support.disallowed_deprecation = :log

  # Tell Active Support which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []


  Gem::SassRails.production(config)
end
