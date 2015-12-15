module Rotary
  class Filesystem

    def controller(file)
      require base_path + '/app/controllers/' + file
    end

    def base_path
      Rotary::Config::DATA[:base_path]
    end

  end
end
