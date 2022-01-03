class Api::V1::LibrariesController < Api::ApiController

  def index
    render(json: Library.all)
  end

end