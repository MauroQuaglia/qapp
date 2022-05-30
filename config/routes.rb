Rails.application.routes.draw do
  root(to: "home#index")

  resources(:authors)

  # basta debug controller
  namespace(:debug) do
    get('/alive', to: 'alive#show')
  end

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
