Rails.application.routes.draw do
  root(to: "home#index")

  namespace(:debug) do
    get('/alive', to: 'alive#show')
  end

  namespace(:api) do
    namespace(:v1) do
      resources(:libraries, only: :index)
      resources(:documentations, only: :index)
    end
  end

end
