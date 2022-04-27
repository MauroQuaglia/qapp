class AuthorsController < ApplicationController

  def index
    @authors = authors
    call_strategies([::Authors::NotFound, ::Authors::Index])
  end

  def authors
    Author.all
  end

end
