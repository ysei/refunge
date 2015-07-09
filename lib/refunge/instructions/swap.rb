class Refunge::Instructions::Swap < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    stack.concat(stack.pop(2).reverse)
  end

end
