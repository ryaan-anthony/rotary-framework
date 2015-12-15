module Rotary
  class Controller

    def initialize(args)
      @response = {}
    end

    def action(request)
      prepare(request)
      respond
    end

    protected

    def prepare(request)
      prepare_json    if request[:format] == 'json'
      prepare_xml     if request[:format] == 'xml'
      prepare_content if request[:format] == 'txt'
    end

    def respond
      @response
    end

    def prepare_content
      @response[:content] = get_content
    end

    def prepare_xml
      require 'ox'
      @response[:type] = 'xml'
      @response[:content] = Ox.dump(get_content, {})
    end

    def prepare_json
      require 'json'
      @response[:type] = 'json'
      @response[:content] = get_content.to_json
    end

  end
end
