class Refunge::Instructions::Get < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    x, y = stack.pop(2)
    instruction = code.instruction_at(x, y)
    stack << (instruction && instruction.ord || 0)
  end

end
