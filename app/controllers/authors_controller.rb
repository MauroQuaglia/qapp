class AuthorsController < ApplicationController

  # GET http://localhost:3000/authors
  def index
    permitted_params = params.permit(:url)
    @route = Routing::Authors::IndexRoute.new(permitted_params)

    return render(plain: 'Bad Request!', status: :bad_request) if !route.valid?

    call_strategies([::Authors::NotFound, ::Authors::Redirect, ::Authors::Index])
  end

  # POST http://localhost:3000/authors
  def create

  end

  #http://localhost:3000/authors/1
  def show
    permitted_params = params.permit(:id)
    @route = Routing::Authors::ShowRoute.new(permitted_params)

    return render(plain: 'Bad Request!', status: :bad_request) if !route.valid?

    call_strategies([::Authors::NotFound, ::Authors::Show])
  end

  def route
    @route
  end

  def authors
    Author.all
  end

  def author(id)
    Author.find_by(id: id)
  end

end
