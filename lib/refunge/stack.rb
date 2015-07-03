module Refunge
  class Stack
    attr_reader :stack

    def initialize
      @stack = []
    end

    def pop(n=1)
      n.times.map { stack.pop || 0 }
    end

    def <<(value)
      stack << value
    end

  end
end
