require("rails_helper")

describe("Home") do

  xit("Should return status_code ok") do
    get('/')
    expect(response).to have_http_status(:ok)
  end

  it("Should not execute many queries") do
    capybara = Library.create(name: 'Capybara', source: 'https://rubygems.org/gems/capybara', note: 'Gemma ufficiale')
    capybara.documentations.create(name: 'Guida Capybara', source: 'https://teamcapybara.github.io/capybara/', note: 'Guida ufficiale')
    expect { get('/') }.to make_database_queries(count: 1)
  end

end