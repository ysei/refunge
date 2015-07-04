module Refunge
  class Stack

    def initialize(*args)
      @stack = Array.new(args)
      @string_mode = false
    end

    def <<(value)
      stack << (string_mode? ? value.ord : value)
    end

    def concat(other)
      @stack = Stack.new(*stack.concat(other))
    end

    def pop(*args)
      stack.pop(*args)
    end

    def last(*args)
      stack.last(*args)
    end

    def toggle_string_mode!
      @string_mode = !@string_mode
    end

    def string_mode?
      @string_mode
    end

  protected

    attr_reader :stack

  end
end
