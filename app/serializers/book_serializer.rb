class Bookserializer < ActiveModel::Serializer
  attributes(:name, :source, :note)
end