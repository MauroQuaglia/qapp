class Authors::Index < SimpleDelegator

  def applicable?
    authors.present?
  end

  def execute
    render(
      :index,
      locals: { authors: authors },
      status: :ok
    )
  end
end
