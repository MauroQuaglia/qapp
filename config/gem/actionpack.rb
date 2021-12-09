class Gem::Actionpack

  def self.production(config)
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.enabled = true
  end

  def self.development(config)
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
    config.public_file_server.enabled = true
  end

  def self.test(config)
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
    config.public_file_server.enabled = true
  end

end