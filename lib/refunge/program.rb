module Refunge
  class InvalidInstructionLocationError < ArgumentError; end

  class Program
    attr_reader :code,
                :height,
                :width

    def initialize(code)
      @height = code.length

      @code = code.lines.map(&:chomp)
      @width = @code.max_by(&:length).length
      @code = @code.map { |line| line.ljust(width) }
    end

    def instruction_at(x, y)
      if x >= width || y >= height
        raise InvalidInstructionLocationError, "(#{x}, #{y}) is outside the range of the program"
      end
      
      code[y][x]
    end

  end
end
