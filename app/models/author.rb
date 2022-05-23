class Author < ApplicationRecord
  has_many(:books, dependent: :destroy, inverse_of: :author)
end