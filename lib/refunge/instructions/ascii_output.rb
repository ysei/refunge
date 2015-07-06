class Refunge::Instructions::AsciiOutput < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    output << stack.pop.chr
  end

end
