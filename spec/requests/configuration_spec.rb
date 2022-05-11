require("rails_helper")

describe("Config") do

  it 'Should have correct gemset' do
    ruby_version = File.read(Rails.root.join('.ruby-version'))
    gemset_name = File.read(Rails.root.join('.ruby-gemset'))
    rvm_ruby_version = "#{ruby_version}@#{gemset_name}"

    expect(rvm_ruby_version).to eq('3.1.1@qapp')
  end

  it 'Gemfile.lock should not contain bundle version' do
    gem_file_lock = File.read(Rails.root.join('Gemfile.lock'))

    expect(gem_file_lock).not_to include('BUNDLED WITH')
  end

  it 'Should use correct Rails version' do
    expect(Gem.loaded_specs['rails'].version).to eq('7.0.3')
  end

  it 'Should work in Zeitwerk mode' do
    expect(Rails.autoloaders.zeitwerk_enabled?).to be_truthy
  end


  it("should set action_dispatch.default_headers") do
    get('/')
    headers = response.headers
    expect(headers['X-Frame-Options']).to eq('SAMEORIGIN')
    expect(headers['X-XSS-Protection']).to eq('1; mode=block')
    expect(headers['X-Content-Type-Options']).to eq('nosniff')
    expect(headers['X-Permitted-Cross-Domain-Policies']).to eq('none')
    expect(headers['Referrer-Policy']).to eq('strict-origin-when-cross-origin')
    expect(headers['Content-Type']).to eq('text/html; charset=utf-8')
    expect(headers['Cache-Control']).to eq('max-age=0, private, must-revalidate')
  end

  it("should set load_defaults") do
    config = double('config').as_null_object
    expect(config).to receive(:load_defaults).with(Rails::VERSION::STRING.to_f)

    Gem::Railties.application(config)
  end

end