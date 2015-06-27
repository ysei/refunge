module Refunge
  class Interpreter
    attr_reader :cursor,
                :direction,
                :program,
                :stack

    def initialize(raw_program)
      @program = Program.new(raw_program)
      @cursor = Cursor.new(program.width, program.height)
      @stack = Stack.new
      @direction = :right
    end

    def step
      instruction = Instructions.get(program.instruction_at(*cursor))
      instruction.call(stack)
      cursor.move!(direction)
    end

  end
end
