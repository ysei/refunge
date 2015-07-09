class Refunge::Instructions::Trampoline < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    cursor.move!
  end

end
