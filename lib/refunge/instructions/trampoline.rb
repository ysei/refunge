class Refunge::Instructions::Trampoline < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    cursor.move!
  end

end
