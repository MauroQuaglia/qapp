class RouteBase
  include Validator

  def valid?
    raise NotImplementedError
  end
end