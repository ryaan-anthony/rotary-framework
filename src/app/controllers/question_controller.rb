class QuestionController < Rotary::Controller

  def action(request)

    # todo replace with real content
    content = request

    response = {}

    if request[:format] == 'json'

      require 'json'

      response[:type] = 'json'

      response[:content] = content.to_json

    end

    if request[:format] == 'xml'

      require 'ox'

      response[:type] = 'xml'

      response[:content] = Ox.dump(content, {})

    end

    response

  end

end
