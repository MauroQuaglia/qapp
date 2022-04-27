class Authors::Index < SimpleDelegator

  def applicable?
    authors.present?
  end

  def execute
    render(:index, status: :ok)
  end
end
