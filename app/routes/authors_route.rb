class AuthorsRoute < RouteBase
  attr_reader :id

  def initialize(params)
    @id = params[:id]
  end

  def valid?
    is_integer?(@id) && valid_range?(@id)
  end

end