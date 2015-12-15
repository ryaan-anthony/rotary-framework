module Rotary
  class Validator

    def empty(array)
      array.length == 0
    end

    def same(left, right)
      left == right
    end

    def different(left, right)
      left != right
    end

  end
end
