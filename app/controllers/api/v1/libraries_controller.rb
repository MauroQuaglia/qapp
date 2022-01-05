class Api::V1::LibrariesController < Api::ApiController

  # http://localhost:3000/api/v1/libraries?include=documentations
  # http://localhost:3000/api/v1/libraries?filter[name]=Capybara
  # http://localhost:3000/api/v1/libraries?filter[name]=Capybara&include=documentations
  def index
    render(
      json: Library.where(filters).includes(:documentations), # Lui prende anche le documentations
      include: include # Poi se le vuoi te le serializza
    )
  end

end