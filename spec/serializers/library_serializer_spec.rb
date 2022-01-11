require("rails_helper")

describe(LibrarySerializer) do

=begin
  it("Should serialize attribute") do
    capybara = Library.create(name: 'Capybara', source: 'https://rubygems.org/gems/capybara', note: 'Gemma ufficiale')
    serializer = LibrarySerializer.new(capybara)

    expect(serializer.attributes).to contain_exactly([:name, "Capybara"], [:source, "https://rubygems.org/gems/capybara"])
  end
=end

end