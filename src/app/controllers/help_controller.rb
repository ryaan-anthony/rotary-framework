class HelpController < Rotary::Controller

  def action(request)

    response = {}

    if request[:format] == 'txt'

      response[:content] = 'Welcome to Rotary'

    end

    response

  end

end
