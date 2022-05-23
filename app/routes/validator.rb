module Validator

  def is_integer?(value)
    true if Integer(value) rescue false
  end

  def valid_range?(value)
    1 <= value.to_i && value.to_i <= 1_000_000_000
  end
end