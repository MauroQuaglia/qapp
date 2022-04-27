class Routing::Authors::IndexRoute

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