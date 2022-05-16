class Routing::Authors::IndexRoute < Routing::RouteBase

  def initialize(params)
    @params = params
  end

  def valid?
    true
  end

  def id
    @params['id']
  end

  def redirect
    @params['url']
  end

end