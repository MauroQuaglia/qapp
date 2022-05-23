class Book < ApplicationRecord
  belongs_to(:author, foreign_key: :author_id, inverse_of: :books)
end
