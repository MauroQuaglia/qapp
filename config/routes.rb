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

  get '/400', to: 'errors#bad_request'
  get '/500', to: 'errors#internal_server_error'
  get '*path', to: 'errors#not_found'
end
