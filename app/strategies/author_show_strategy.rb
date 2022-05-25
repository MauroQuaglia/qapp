class AuthorShowStrategy < SimpleDelegator

  def applicable?
    author.present?
  end

  def execute
    render(
      :show,
      locals: { author: author},
      status: :ok
    )
  end
end
