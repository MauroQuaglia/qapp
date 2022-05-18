class Authors::Show::Show < SimpleDelegator

  def applicable?
    author(route.id).present?
  end

  def execute
    render(
      :show,
      locals: { author: author(route.id) },
      status: :ok
    )
  end
end
