#!/usr/bin/ruby
require_relative 'app/bootstrap'

# require_relative 'app/models/input_validator'
# validator = InputValidator.new
#
# require_relative 'app/controllers/question_controller'
# QuestionController.new(
#     :arguments    => Proc.new { ARGV },
#     :input_stream => Proc.new { STDIN },
#     :validator    => Proc.new { validator }
# ).ask
require 'json'
require 'sinatra'

get '/' do

  obj = {
      response: 'Hello Rotary'
  }

  content_type :json

  obj.to_json

end


