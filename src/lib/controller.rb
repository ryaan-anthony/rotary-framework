class Controller

  def request
    ARGV
  end

  protected

  def response
    STDIN.gets.chomp
  end

end