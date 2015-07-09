class Refunge::Instructions::Addition < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    b, a = stack.pop(2)
    stack << a + b
  end

end
