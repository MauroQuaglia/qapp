class AuthorsIndexStrategy < SimpleDelegator

  def applicable?
    !authors.empty?
  end

  def execute
    render(
      :index,
      locals: { authors: authors },
      status: :ok
    )
  end
end
