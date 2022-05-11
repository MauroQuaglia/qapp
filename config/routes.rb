Rails.application.routes.draw do
  root(to: "home#index")

  resources(:authors)

  # basta debug controller
  namespace(:debug) do
    get('/alive', to: 'alive#show')
  end

  namespace(:api) do
    namespace(:v1) do
      resources(:libraries, only: :index)
      resources(:books, only: :index)
    end
  end

end
