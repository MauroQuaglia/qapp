require("rails_helper")

describe("Config") do

  it("should set load_defaults") do
    config = double('config')
    expect(config).to receive(:load_defaults).with(6.1)

    Gem::Railties.application(config)
  end

end