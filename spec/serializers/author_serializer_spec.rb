require("rails_helper")

describe(AuthorSerializer) do

=begin
  it("Should serialize attribute") do
    capybara = Author.create(name: 'Capybara', source: 'https://rubygems.org/gems/capybara', note: 'Gemma ufficiale')
    serializer = AuthorSerializer.new(capybara)

    expect(serializer.attributes).to contain_exactly([:name, "Capybara"], [:source, "https://rubygems.org/gems/capybara"])
  end
=end

end