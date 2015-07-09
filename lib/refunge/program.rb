module Refunge
  class InvalidInstructionLocationError < ArgumentError; end

  class Program
    attr_reader :code,
                :height,
                :width

    def initialize(code)
      @code = code.lines.map(&:chomp)
      reset_code_dimensions
      pad_code_lines
    end

    def instruction_at(x, y)
      if x >= width || y >= height
        raise InvalidInstructionLocationError, "(#{x}, #{y}) is outside the range of the program"
      end
      
      code[y][x]
    end
      
    def insert(x, y, v)
      if y + 1 > height
        (y - height + 1).times { code << "" }
      end
      
      code[y] = code[y].ljust(x + 1)
      code[y][x] = v.chr
      reset_code_dimensions
      pad_code_lines
    end

  private

    def reset_code_dimensions
      @height = code.length
      @width = code.max_by(&:length).length
    end

    def pad_code_lines
      @code = code.map { |line| line.ljust(width) }
    end

  end
end
