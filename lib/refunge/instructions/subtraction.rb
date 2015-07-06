class Refunge::Instructions::Subtraction < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    b, a = stack.pop(2)
    stack << b - a
  end

end
