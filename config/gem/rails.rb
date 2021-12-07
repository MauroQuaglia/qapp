class Gem::Rails

  def self.production(config)
    config.cache_classes = true
    config.eager_load = true
  end

  def self.development(config)
    config.cache_classes = false
    config.eager_load = false
  end

  def self.test(config)
    config.cache_classes = true
    config.eager_load = false
  end

end