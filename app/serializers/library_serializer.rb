class LibrarySerializer < ActiveModel::Serializer
  attributes(:name, :source)
  has_many(:documentations)
end