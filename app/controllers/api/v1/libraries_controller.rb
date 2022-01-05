class Api::V1::LibrariesController < Api::ApiController

  # http://localhost:3000/api/v1/libraries?include=documentations
  # http://localhost:3000/api/v1/libraries?filter[name]=Capybara
  # http://localhost:3000/api/v1/libraries?filter[name]=Capybara&include=documentations
  def index
    libraries = Library.where(filters).includes(:documentations)
    pagy_meta, pagy_libraries = pagy(libraries, page: page_number, items: page_size)

    render(
      json: Library.where(filters).includes(:documentations), # Lui prende anche le documentations
      include: include, # Poi se le vuoi te le serializza
      meta: meta(pagy_meta),
      links: links(pagy_meta),
    )
  end

end