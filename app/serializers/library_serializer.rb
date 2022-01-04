class LibrarySerializer < ActiveModel::Serializer
  attributes(:name, :source, :age) # attributes
  has_many(:documentations) # relationships

  def age
    Date.today.to_date - object.created_at.to_date
  end
end