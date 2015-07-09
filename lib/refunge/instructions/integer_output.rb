class Refunge::Instructions::IntegerOutput < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    output << stack.pop
  end

end
