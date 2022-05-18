class Authors::Edit::NotFound < SimpleDelegator

  def applicable?
    !author(route.id).present?
  end

  def execute
    render(
      plain: 'Stai cercando di modificare un autore che non è presente nel nostro database!',
      status: :not_found
    )
  end
end
