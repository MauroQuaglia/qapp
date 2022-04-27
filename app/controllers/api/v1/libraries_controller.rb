class Api::V1::LibrariesController < Api::ApiController

  def index
    libraries = Author.where(filters).includes(:Books)
    pagy_meta, pagy_libraries = pagy(libraries, page: page_number, items: page_size)

    render(
      json: pagy_libraries, # Lui prende anche le Books
      include: include, # Poi se le vuoi te le serializza
      meta: meta(pagy_meta),
      links: links(pagy_meta)
    )

    # http://localhost:3000/api/v1/libraries?include=Books
    # http://localhost:3000/api/v1/libraries?filter[name]=Capybara
    # http://localhost:3000/api/v1/libraries?filter[name]=Capybara&include=Books
  end

end