class Gem::Actionpack

  def self.application(config)
    config.action_dispatch.default_headers = {
      "X-Frame-Options" => "SAMEORIGIN",
      "X-XSS-Protection" => "0",
      "X-Content-Type-Options" => "nosniff",
      "X-Permitted-Cross-Domain-Policies" => "none",
      "Referrer-Policy" => "strict-origin-when-cross-origin"
    }
  end

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