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

require 'sinatra'

payload = {
    response: 'Hello Rotary',
    errors: []
}

get '/*.*' do |path,ext|

  payload[:request] = path

  if ext == 'json'

    require 'json'

    content_type :json

    halt payload.to_json

  end

  if ext == 'xml'

    require 'ox'

    content_type :xml

    halt Ox.dump(payload)

  end

  raise 'Requested format not available'

end


