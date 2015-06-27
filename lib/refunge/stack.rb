module Refunge
  class Stack
    attr_reader :stack

    def initialize
      @stack = []
    end

    def pop
      stack.pop
    end

    def <<(value)
      stack << value
    end

  end
end
