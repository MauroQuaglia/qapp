class Api::V1::DocumentationsController < Api::ApiController

  def index
    documentations = Documentation.where(filters)
    pagy_meta, pagy_documentations = pagy(documentations, page: page_number, items: page_size)

    render(
      json: pagy_documentations,
      include: include,
      meta: meta(pagy_meta),
      links: links(pagy_meta)
    )
  end

end