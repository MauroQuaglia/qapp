class AuthorsController < ApplicationController
  # https://www.oreilly.com/library/view/restful-rails-development/9781491910849/ch04.html
  # https://guides.rubyonrails.org/form_helpers.html
  # https://guides.rubyonrails.org/getting_started.html

  # Display all authors.
  # GET http://localhost:3000/authors
  def index
    call_strategies([::Authors::Index::NotFound, ::Authors::Index::Index])
  end

  # Displays a specific author.
  # GET http://localhost:3000/authors/:id
  def show
    permitted_params = params.permit(:id)
    @route = Routing::Authors::ShowRoute.new(permitted_params)

    return render(plain: 'Bad Request!', status: :bad_request) if !route.valid?

    call_strategies([::Authors::Show::NotFound, ::Authors::Show::Show])
  end

  # Returns an HTML form for creating a new author
  # GET http://localhost:3000/authors/new
  def new
    @author = Author.new
  end

  # Creates a new author.
  # POST http://localhost:3000/authors
  def create
    permitted_params = params.require(:author).permit(:name, :date_of_birth, :nationality)
    @author = Author.new(permitted_params)
    if @author.save
      redirect_to @author
    else
      redirect_to new_author_path, status: :unprocessable_entity
    end
  end

  # Returns an HTML form for editing a author.
  # GET http://localhost:3000/authors/:id/edit
  def edit
    permitted_params = params.permit(:id)
    @route = Routing::Authors::EditRoute.new(permitted_params)

    return render(plain: 'Bad Request!', status: :bad_request) if !route.valid?

    call_strategies([::Authors::Edit::NotFound, ::Authors::Edit::Edit])
  end

  # Updates a specific author.
  # PATCH/PUT http://localhost:3000/authors/:id
  def update
  end

  # Deletes a specific author.
  # DELETE http://localhost:3000/authors/:id
  def destroy
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
