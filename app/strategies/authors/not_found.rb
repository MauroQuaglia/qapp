class Authors::NotFound < SimpleDelegator

  def applicable?
    !authors.present?
  end

  def execute
    render(plain: 'Non ci sono autori!', status: :not_found)
  end
end
