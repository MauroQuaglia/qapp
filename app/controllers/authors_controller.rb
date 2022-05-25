class AuthorsController < ApplicationController

  # Display all authors.
  # GET http://localhost:3000/authors
  def index
    call_strategies([AuthorsNotFoundStrategy, AuthorsIndexStrategy])
  end

  # Displays a specific author.
  # GET http://localhost:3000/authors/:id
  def show
    @route = AuthorsRoute.new(params.permit(:id))

    return render(plain: 'Bad Request!', status: :bad_request) if !@route.valid?

    call_strategies([AuthorNotFoundStrategy, AuthorShowStrategy])
  end

  # Returns an HTML form for creating a new author
  # GET http://localhost:3000/authors/new
  def new
    call_strategies([AuthorNewStrategy])
  end

  # Creates a new author.
  # POST http://localhost:3000/authors
  def create
    permitted_params = params.require(:author).permit(:name, :nationality)
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
    @route = AuthorsRoute.new(params.permit(:id))

    return render(plain: 'Bad Request!', status: :bad_request) if !@route.valid?

    call_strategies([AuthorNotFoundStrategy, AuthorEditStrategy])
  end

  # Updates a specific author.
  # PATCH/PUT http://localhost:3000/authors/:id
  def update
    @route = AuthorsRoute.new(params.permit(:id))

    return render(plain: 'Bad Request!', status: :bad_request) if !@route.valid?

    permitted_params = params.require(:author).permit(:name, :nationality)
    if author.update(permitted_params)
      redirect_to author
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Deletes a specific author. Bug di Rails 7...
  # DELETE http://localhost:3000/authors/:id
  def destroy
    @route = AuthorsRoute.new(params.permit(:id))

    return render(plain: 'Bad Request!', status: :bad_request) if !@route.valid?

    author.destroy
  end

  def authors
    Author.all
  end

  def author
    Author.find_by(id: @route.id)
  end

end
