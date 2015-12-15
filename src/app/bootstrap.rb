base_path = File.expand_path File.dirname('../')

$:.unshift(base_path + '/lib')

module Rotary
  autoload :Validator,  'validator'
  autoload :Controller, 'controller'
end
