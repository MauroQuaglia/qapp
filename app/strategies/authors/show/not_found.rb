class Authors::Show::NotFound < SimpleDelegator

  def applicable?
    !author(route.id).present?
  end

  def execute
    render(
      plain: 'Stai cercando un autore che non è presente nel nostro database!',
      status: :not_found
    )
  end
end
