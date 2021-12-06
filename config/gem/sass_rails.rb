class Gem::SassRails

  def self.production(config)
    config.assets.css_compressor = :sass
    config.assets.js_compressor = :uglifier
    config.assets.digest = true
  end

  def self.development(config)
    config.assets.css_compressor = :sass
    config.assets.js_compressor = :uglifier
    config.assets.digest = true
  end

  def self.test(config) end

end