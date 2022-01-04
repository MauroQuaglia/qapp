class DocumentationSerializer < ActiveModel::Serializer
  attributes(:name, :source, :note)
end