module Refunge
  class Interpreter
    attr_reader :cursor,
                :direction,
                :program,
                :stack,
                :output

    def initialize(raw_program)
      @program = Program.new(raw_program)
      @cursor = Cursor.new(program.width, program.height)
      @stack = Stack.new
      @output = []
    end

    def step
      instruction = Instructions.get(program.instruction_at(*cursor))
      instruction.execute(stack, cursor, output, program)
      cursor.move!
    end

    def direction
      cursor.direction
    end

  end
end
