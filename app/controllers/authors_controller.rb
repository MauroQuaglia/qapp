class AuthorsController < ApplicationController

  def index
    permitted_params = params.permit(:url)
    @route = Routing::Authors::IndexRoute.new(permitted_params)

    return render(plain: 'Bad Request!', status: :bad_request) if !route.valid?

    call_strategies([::Authors::NotFound,
                     ::Authors::Redirect,
                     ::Authors::Index])
  end

  def route
    @route
  end

  def authors
    Author.all
  end

end
