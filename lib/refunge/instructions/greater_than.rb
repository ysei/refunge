class Refunge::Instructions::GreaterThan < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    b, a = stack.pop(2)
    stack << (b > a ? 1 : 0)
  end

end
