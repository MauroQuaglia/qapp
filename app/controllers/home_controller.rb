class HomeController < ApplicationController

  def index
    @text = 'My QApp'
    @libraries = Library.all
  end

end
