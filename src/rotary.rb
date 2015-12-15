#!/usr/bin/ruby
require_relative 'app/bootstrap'

require 'sinatra'

request = {
    errors: []
}

get '/*.*' do |path,ext|

  request[:path] = path

  request[:params] = params

  request[:format] = ext

  request_symbol = path.split('/').join('_').to_sym

  controller = Rotary::Config::DATA[:controller_mapping][request_symbol]

  if controller.class == Proc

    response = controller.call.action(request)

    content_type response[:type] if response[:type]

    halt body response[:content] if response[:content]

  end

  halt 404

end

get '/*' do

  halt 404

end
