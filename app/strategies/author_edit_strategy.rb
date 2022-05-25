class AuthorEditStrategy < SimpleDelegator

  def applicable?
    author.present?
  end

  def execute
    render(
      :edit,
      locals: { author: author },
      status: :ok
    )
  end
end
