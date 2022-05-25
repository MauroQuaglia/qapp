class AuthorNotFoundStrategy < SimpleDelegator

  def applicable?
    !author.present?
  end

  def execute
    render(
      plain: 'Questo autore non esiste!',
      status: :not_found
    )
  end
end
