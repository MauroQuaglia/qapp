class Gem::Actionpack

  def self.application(config)
    config.action_dispatch.default_headers = {
      "X-Frame-Options" => "SAMEORIGIN",
      "X-XSS-Protection" => "1; mode=block",
      "X-Content-Type-Options" => "nosniff",
      "X-Permitted-Cross-Domain-Policies" => "none",
      "Referrer-Policy" => "strict-origin-when-cross-origin",
      "Content-Type" => "text/html; charset=utf-8",
      "Cache-Control" => "max-age=0, private, must-revalidate"
    }

    # In questo modo blocco tutto ciò che non è consentito.
    # Poi se volglio concedere una redirect posso aggiungere allow_other_host: true
    config.action_controller.raise_on_open_redirects = true
  end

  def self.production(config)
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.enabled = true
  end

  def self.development(config)
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.enabled = true
  end

  def self.test(config)
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
    config.public_file_server.enabled = true
  end

end