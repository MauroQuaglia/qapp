class Gem::Railties

  def self.application(config)
    config.load_defaults(Rails::VERSION::STRING.to_f)
    #config.add_autoload_paths_to_load_path = true sembra non avere efferro
    # config.active_support.default_message_encryptor_serializer ???
    # config.active_support.default_message_verifier_serializer = 'slkslskls'
  end

end