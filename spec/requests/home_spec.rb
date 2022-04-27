require("rails_helper")

describe("Home") do

  it("Should return status_code ok") do
    get('/')
    expect(response).to have_http_status(:ok)
  end

  it("Should not execute many queries") do
    # capybara = Author.create(name: 'Capybara', source: 'https://rubygems.org/gems/capybara', note: 'Gemma ufficiale')
    #capybara.Books.create(name: 'Guida Capybara', source: 'https://teamcapybara.github.io/capybara/', note: 'Guida ufficiale')
    #expect { get('/') }.to make_database_queries(count: 2)
  end

end