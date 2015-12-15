class Controller

  protected

  def request
    ARGV
  end

  def response
    STDIN.gets.chomp
  end

end