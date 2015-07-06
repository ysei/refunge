class Refunge::Instructions::Duplicate < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    stack << stack.last
  end

end
