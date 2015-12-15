Rotary::Config::DATA[:controller_mapping] = {
    question: Proc.new {
      Rotary::Filesystem.new.controller('question_controller')
      QuestionController.new({})
    }
}
