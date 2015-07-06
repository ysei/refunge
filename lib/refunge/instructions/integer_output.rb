class Refunge::Instructions::IntegerOutput < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    output << stack.pop
  end

end
