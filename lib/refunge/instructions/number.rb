class Refunge::Instructions::Number < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    stack << token.to_i
  end

end
