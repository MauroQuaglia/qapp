Rails.application.routes.draw do
  root(to: "home#index")

  namespace(:api) do
    namespace(:v1) do
      resources(:libraries, only: :index)
    end
  end

end
