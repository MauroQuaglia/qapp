class HomeController < ApplicationController

  def index
    @text = 'My QApp'
    @authors = Author.all
  end

end
