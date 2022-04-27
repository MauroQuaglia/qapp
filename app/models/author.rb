class Author < ActiveRecord::Base
  has_many(:books, dependent: :destroy, inverse_of: :author)
end
