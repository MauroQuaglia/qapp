class LibrarySerializer < ActiveModel::Serializer
  attributes(:name, :source)
end