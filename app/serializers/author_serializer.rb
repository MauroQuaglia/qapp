class AuthorSerializer < ActiveModel::Serializer
  attributes(:name, :source, :age) # attributes
  has_many(:books) # relationships

  def age
    Date.today.to_date - object.created_at.to_date
  end
end