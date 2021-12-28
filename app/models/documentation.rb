class Documentation < ActiveRecord::Base
  belongs_to(:library, foreign_key: :library_id, inverse_of: :documentations)
end
