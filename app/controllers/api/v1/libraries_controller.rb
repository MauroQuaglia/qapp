class Api::V1::LibrariesController < Api::ApiController

  # http://localhost:3000/api/v1/libraries?include=documentations
  # http://localhost:3000/api/v1/libraries?filter[]=Rails
  def index
    render(
      json: Library.all.includes(:documentations),#.where(filters),
      include: include
    )
  end

end