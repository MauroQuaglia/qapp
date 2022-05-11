class Routing::Authors::IndexRoute < Routing::RouteBase

  def initialize(params)
    @params = params
  end

  def valid?
    true
  end

  def redirect
    @params['url']
  end

end