class Refunge::Instructions::Multiplication < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    b, a = stack.pop(2)
    stack << a * b
  end

end
