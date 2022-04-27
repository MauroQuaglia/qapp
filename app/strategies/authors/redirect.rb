class Authors::Redirect < SimpleDelegator

  def applicable?
    route.redirect.present?
  end

  def execute
    redirect_to(route.redirect, status: :moved_permanently)
  end
end
