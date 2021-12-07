class Gem::Rails

  def self.production(config)
    config.cache_classes = true
  end

  def self.development(config)
    config.cache_classes = false
  end

  def self.test(config)
    config.cache_classes = true
  end

end