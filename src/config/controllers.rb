Rotary::Config::DATA[:controller_mapping] = {
    help: Proc.new {
      Rotary::Filesystem.new.controller('help_controller')
      HelpController.new({})
    },
    example_usage: Proc.new {
      Rotary::Filesystem.new.controller('question_controller')
      QuestionController.new({})
    }
}
