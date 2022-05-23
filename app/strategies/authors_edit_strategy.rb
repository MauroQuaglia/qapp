class AuthorsEditStrategy < SimpleDelegator

  def applicable?
    author(route.id).present?
  end

  def execute
    render(
      :edit,
      locals: { author: author(route.id) },
      status: :ok
    )
  end
end
