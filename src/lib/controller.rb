class Controller

  def initialize(request, input_stream)
    @request = request
    @input_stream = input_stream
  end

  protected

  def get_response
    @input_stream.gets.chomp
  end

end