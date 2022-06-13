Rails.application.routes.draw do
  root(to: "home#index")

  get('/alive', to: 'alive#show')
  get('/strategies', to: 'strategies#index')
  get('/downloads/:name/:extension', to: 'downloads#index')
  get('/charts', to: 'charts#index')

  resources(:authors)

  namespace(:api) do
    namespace(:v1) do
      resources(:authors, only: :index)
      resources(:books, only: :index)
    end
  end

  get '/404', to: 'application#not_found'
  get '/400', to: 'application#bad_request'
  get '/500', to: 'application#internal_server_error'

  get '*path', to: 'application#not_found'
end
