class Api::ApiController < ActionController::API

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
    permitted_params.dig(:filter)
  end

  private

  def permitted_params
    params.permit(:include, filter: {}, page: [:size, :number])
  end

end
