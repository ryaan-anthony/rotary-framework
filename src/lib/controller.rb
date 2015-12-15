class Controller

  def initialize(args)
    @arguments =    args[:arguments].call     if args[:arguments].class == Proc
    @input_stream = args[:input_stream].call  if args[:input_stream].class == Proc
    @validator =    args[:validator].call     if args[:validator].class == Proc
  end

  protected

  def get_response
    @input_stream.gets.chomp
  end

end