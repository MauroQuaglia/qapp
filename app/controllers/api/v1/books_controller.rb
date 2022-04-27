class Api::V1::BooksController < Api::ApiController

  def index
    books = Author.where(filters).includes(:books)
    pagy_meta, pagy_libraries = pagy(books, page: page_number, items: page_size)

    render(
      json: pagy_libraries, # Lui prende anche le Books
      include: include, # Poi se le vuoi te le serializza
      meta: meta(pagy_meta),
      links: links(pagy_meta)
    )
  end

end