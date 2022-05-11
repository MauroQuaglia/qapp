class Routing::Authors::ShowRoute < Routing::RouteBase
  attr_reader :id

  def initialize(params)
    @id = params[:id]
  end

  def valid?
    is_integer?(@id) && not_overflow?(@id)
  end

end