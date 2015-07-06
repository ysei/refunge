class Refunge::Instructions::Swap < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    stack.concat(stack.pop(2).reverse)
  end

end
