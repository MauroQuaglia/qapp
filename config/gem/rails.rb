class Gem::Rails

  def self.production(config)
    config.cache_classes = true
    config.eager_load = true #on boot, in pro per performare meglio subito
    config.consider_all_requests_local = false
    config.log_level = :warn
    config.log_tags = [:request_id]
  end

  def self.development(config)
    config.cache_classes = false
    config.eager_load = false #on boot
    config.consider_all_requests_local = true # Show full error reports.
    config.log_level = :info
    config.log_tags = [:request_id]
  end

  def self.test(config)
    config.cache_classes = true
    config.eager_load = false #on boot, potrebbe non servire per un singolo test
    config.consider_all_requests_local = true
    config.log_level = :warn
    config.log_tags = nil
  end

end