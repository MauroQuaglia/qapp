Rails.application.routes.draw do
  apipie
  root(to: "home#index")

  namespace(:api) do
    namespace(:v1) do
      resources(:libraries, only: :index)
      resources(:documentations, only: :index)
    end
  end

end
