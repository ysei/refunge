class Refunge::Instructions::Inverse < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    stack << (stack.pop == 0 ? 1 : 0)
  end

end
