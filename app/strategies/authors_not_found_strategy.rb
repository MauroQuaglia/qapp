class AuthorsNotFoundStrategy < SimpleDelegator

  def applicable?
    authors.empty?
  end

  def execute
    render(
      plain: 'Non ci sono autori!',
      status: :not_found
    )
  end
end
