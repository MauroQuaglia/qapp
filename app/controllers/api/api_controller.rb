class Api::ApiController < ActionController::API
  include Pagy::Backend

  def page_number
    permitted_params.dig(:page, :number) || 1
  end

  def page_size
    permitted_params.dig(:page, :size) || 1
  end

  def include
    permitted_params.dig(:include)
  end

  def filters
    permitted_params[:filter]
  end

  def meta(pagy_meta)
    { count: pagy_meta.count }
  end

  def links(pagy_meta)
    {
      self: url_for_page(pagy_meta.page),
      first: url_for_page(1),
      prev: url_for_page(pagy_meta.prev),
      next: url_for_page(pagy_meta.next),
      last: url_for_page(pagy_meta.last)
    }
  end

  def url_for_page(number)
    url_for(permitted_params.merge(page: { number: number, size: page_size }))
  end

  private

  def permitted_params
    params.permit(:include, filter: {}, page: [:size, :number])
  end

end
