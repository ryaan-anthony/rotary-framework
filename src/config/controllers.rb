Rotary::Config::DATA[:controller_mapping] = {
    help: Proc.new {
      Rotary::Filesystem.new.controller('help_controller')
      HelpController.new({})
    },
    example_usage: Proc.new {
      Rotary::Filesystem.new.controller('example/usage_controller')
      UsageController.new({})
    }
}
