class Authors::Redirect < SimpleDelegator

  def applicable?
    route.redirect.present?
  end

  def execute
    redirect_to(route.redirect, allow_other_host: true, status: :moved_permanently)
  end
end
