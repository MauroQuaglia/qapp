module Routing::Validator

  def is_integer?(value)
    true if Integer(value) rescue false
  end

  def not_overflow?(value)
    value.to_i <= 1_000_000_000
  end
end