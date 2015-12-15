class InputValidator < Rotary::Validator

  def validate_request(request)
    request_is_not_empty(request)
    request_contains_two_arguments(request)
  end

  protected

  def request_contains_two_arguments(request)
    raise 'Request must contain two arguments.' if different(request.length, 2)
  end

  def request_is_not_empty(request)
    raise 'Request must not be empty.' if empty(request)
  end

end
