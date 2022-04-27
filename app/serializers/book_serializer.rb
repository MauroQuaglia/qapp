class BookSerializer < ActiveModel::Serializer
  attributes(:name, :source, :note)
end