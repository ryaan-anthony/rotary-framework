#!/usr/bin/ruby
require_relative 'app/bootstrap'

require 'sinatra'

request = {
    response: 'Hello Rotary',
    errors: []
}

get '/*.*' do |path,ext|

  request[:path] = path.split('/')

  request[:params] = params

  request[:format] = ext

  controller = Rotary::Config::DATA[:controller_mapping][path.to_sym]

  if controller.class == Proc

    response = controller.call.action(request)

    content_type response[:type].to_sym

    body response[:content]

  end

end
