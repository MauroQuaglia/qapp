class Authors::NotFound < SimpleDelegator

  def applicable?
    !author(route.id).present?
  end

  def execute
    render(
      plain: 'Non ci sono autori!',
      status: :not_found
    )
  end
end
