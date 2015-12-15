#!/usr/bin/ruby

require_relative 'lib/validator'
class InputValidator < Validator

  def validate(request)
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


require_relative 'lib/controller'
class QuestionAsker < Controller

  def ask
    validator = InputValidator.new
    validator.validate(@request)
    question, answer = @request
    response = ask_question(question)
    puts 'Correct!' if validator.same(answer, response)
  end

  protected

  def ask_question(question)
    puts question
    get_response
  end

end

QuestionAsker.new(ARGV, STDIN).ask
