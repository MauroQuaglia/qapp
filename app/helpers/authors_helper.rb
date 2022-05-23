module AuthorsHelper
  def authors
    Author.all
  end

  def author(id)
    Author.find_by(id: id)
  end
end
