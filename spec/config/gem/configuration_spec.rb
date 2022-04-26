require("rails_helper")

describe("Config") do

  it("should set load_defaults") do
    config = double('config').as_null_object
    expect(config).to receive(:load_defaults).with(Rails::VERSION::STRING.to_f)

    Gem::Railties.application(config)
  end

  it("should set add_autoload_paths_to_load_path") do
    config = double('config').as_null_object
    expect(config).to receive(:add_autoload_paths_to_load_path=).with(false)

    Gem::Railties.application(config)
    expect($LOAD_PATH & ActiveSupport::Dependencies.autoload_paths).to be_empty
    # Il LOAD_PATH di Ruby è gestito da Rails, semplicemente lo lascio così, non vado ad aggiungerci altra roba.
    # E' giusto così quando si lavora in madalità Zeitwerk.
  end

end