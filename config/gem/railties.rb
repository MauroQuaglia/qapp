class Gem::Railties

  def self.application(config)
    config.load_defaults(Rails::VERSION::STRING.to_f)
  end

end