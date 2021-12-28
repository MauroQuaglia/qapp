class Library < ActiveRecord::Base
  has_many(:documentations, dependent: :destroy, inverse_of: :library)
end
