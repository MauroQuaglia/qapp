class Api::V1::LibrariesController < Api::ApiController

  # http://localhost:3000/api/v1/libraries?include=documentations
  def index
    render(json: Library.includes(:documentations), adapter: :json_api)
  end

end