class Refunge::Instructions::Put < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    v, x, y = stack.pop(3)
    code.insert(x, y, v)
  end

end
