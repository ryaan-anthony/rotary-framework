#!/usr/bin/ruby

require_relative 'lib/validator'
class InputValidator < Validator

  def initialize(response, answer)
    @response = response
    @answer = answer
  end

  def validate
    @response == @answer
  end

end


require_relative 'lib/controller'
class QuestionAsker < Controller

  def validate
    if request.length > 0
      accepted = request[0]
      validator = InputValidator.new(response, accepted)
      validator.validate
    end
  end

  def ask
    if validate
      puts 'Success!'
    end
  end

end


QuestionAsker.new.ask
