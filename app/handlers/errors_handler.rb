module ErrorsHandler
  def bad_request
    render template: 'errors/bad_request', status: 400
  end

  def not_found
    render template: 'errors/not_found', status: 404
  end

  def internal_server_error
    render template: 'errors/internal_server_error', status: 500
  end
end