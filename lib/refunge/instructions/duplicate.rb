class Refunge::Instructions::Duplicate < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    stack << stack.last
  end

end
