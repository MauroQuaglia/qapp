class AuthorNewStrategy < SimpleDelegator

  def applicable?
    true
  end

  def execute
    render(
      :new,
      locals: { author: Author.new },
      status: :ok
    )
  end
end
