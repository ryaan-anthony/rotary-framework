# Define the base path
base_path = File.expand_path File.dirname('../')

# Add /lib/ directory to global LOAD_PATH
$:.unshift(base_path + '/lib')

# Define autoloaded components
module Rotary
  autoload :Validator,  'validator'
  autoload :Controller, 'controller'
  autoload :Config,     'config'
  autoload :Filesystem, 'filesystem'
end

# Set the base path
Rotary::Config::DATA[:base_path] = base_path

# Include all config files
Dir[base_path + '/config/*.rb'].each { |file| require file }
