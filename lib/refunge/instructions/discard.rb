class Refunge::Instructions::Discard < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    stack.pop
  end

end
