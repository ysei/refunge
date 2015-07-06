class Refunge::Instructions::Discard < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    stack.pop
  end

end
