#!/usr/bin/ruby
require_relative 'app/models/input_validator'
validator = InputValidator.new

require_relative 'app/controllers/question_asker'
QuestionAsker.new(
    :arguments    => Proc.new { ARGV },
    :input_stream => Proc.new { STDIN },
    :validator    => Proc.new { validator }
).ask
