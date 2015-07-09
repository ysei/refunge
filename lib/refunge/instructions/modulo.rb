class Refunge::Instructions::Modulo < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    b, a = stack.pop(2)
    stack << b % a
  end

end
