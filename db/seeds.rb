Library.delete_all
Documentation.delete_all

rails = Library.create(name: 'Rails', source: 'https://rubygems.org/search?query=rails', note: 'Gemma ufficiale')
rails.documentations.create(name: 'Guida Rails', source: 'https://guides.rubyonrails.org/v6.1/', note: 'Guida Rails ufficiale')
rails.documentations.create(name: 'Esempio setup base', source: 'https://www.digitalocean.com/community/tutorials/how-to-build-a-ruby-on-rails-application', note: 'Cose che già so...')

capybara = Library.create(name: 'Capybara', source: 'https://rubygems.org/gems/capybara', note: 'Gemma ufficiale')
capybara.documentations.create(name: 'Guida Capybara', source: 'https://teamcapybara.github.io/capybara/', note: 'Guida ufficiale')