class AuthorsController < ApplicationController
  # https://www.oreilly.com/library/view/restful-rails-development/9781491910849/ch04.html
  # https://guides.rubyonrails.org/form_helpers.html

  # Display all authors.
  # GET http://localhost:3000/authors
  def index
    permitted_params = params.permit(:url)
    @route = Routing::Authors::IndexRoute.new(permitted_params)

    return render(plain: 'Bad Request!', status: :bad_request) if !route.valid?

    call_strategies([::Authors::NotFound, ::Authors::Redirect, ::Authors::Index])
  end

  # Returns an HTML form for creating a new author
  # GET http://localhost:3000/authors/new
  def new
    @author = Author.new
  end

  # Creates a new author
  # POST http://localhost:3000/authors
  def create
    permitted_params = params.require(:author).permit(:name, :nationality)
    @author = Author.new(permitted_params)
    if @author.save
      redirect_to @author, alert: "User created successfully."
    else
      redirect_to new_author_path, alert: "Error creating user."
    end
  end

  # Displays a specific category
  # GET http://localhost:3000/authors/:id
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
