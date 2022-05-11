class Routing::RouteBase
  include Routing::Validator

  def valid?
    raise NotImplementedError
  end
end