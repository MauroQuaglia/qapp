class Api::V1::BooksController < Api::ApiController

  def index
    books = Author.where(filters)
    pagy_meta, pagy_books = pagy(books, page: page_number, items: page_size)

    render(
      json: pagy_books,
      include: include,
      meta: meta(pagy_meta),
      links: links(pagy_meta)
    )
  end

end