module Refunge
  class Stack

    def initialize(*args)
      @stack = Array.new(args)
    end

    def <<(value)
      stack << value
    end

    def pop(*args)
      stack.pop(*args)
    end

  protected

    attr_reader :stack

  end
end
