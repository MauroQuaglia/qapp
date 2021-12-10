class Gem::ActiveSupport

  def self.production(config)
    config.active_support.deprecation = :log
    config.active_support.disallowed_deprecation = :log
  end

  def self.development(config)
    config.active_support.deprecation = :log
    config.active_support.disallowed_deprecation = :raise
  end

  def self.test(config)
    config.active_support.deprecation = :stderr
    config.active_support.disallowed_deprecation = :raise
  end

end