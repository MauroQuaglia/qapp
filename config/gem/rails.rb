class Gem::Rails
  def self.production(config)
    config.cache_classes = true
    config.eager_load = true #on boot, in pro per performare meglio subito
    config.consider_all_requests_local = false
    config.log_level = :warn
    config.log_tags = [:request_id]
    config.log_formatter = ::Logger::Formatter.new
    config.i18n.fallbacks = false
    config.i18n.raise_on_missing_translations = false
    config.action_dispatch.show_exceptions = true
    config.action_controller.allow_forgery_protection = true
    config.active_record.logger = nil
  end

  def self.development(config)
    config.cache_classes = false
    config.eager_load = true #on boot

    # For enable /404 /500 custom page
    config.consider_all_requests_local = false # AuthorEditStrategy full error reports.
    config.log_level = :info
    config.log_tags = [:request_id]
    config.log_formatter = ::Logger::Formatter.new
    config.i18n.fallbacks = false
    config.i18n.raise_on_missing_translations = true
    config.action_dispatch.show_exceptions = false
    config.action_controller.allow_forgery_protection = true
    config.active_record.logger = Logger.new(STDOUT) #Query su db log in console
  end

  def self.test(config)
    config.cache_classes = true
    config.eager_load = false #on boot, potrebbe non servire per un singolo test
    config.consider_all_requests_local = true
    config.log_level = :warn
    config.log_tags = nil
    config.log_formatter = ::Logger::Formatter.new
    config.i18n.fallbacks = false
    config.i18n.raise_on_missing_translations = true
    config.action_dispatch.show_exceptions = false
    config.action_controller.allow_forgery_protection = false
    config.active_record.logger = nil #Query su db log in console
  end
end