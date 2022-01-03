class DocumentationSerializer < ActiveModel::Serializer
  attributes(:name, :source, :note)
  belongs_to(:library)
end