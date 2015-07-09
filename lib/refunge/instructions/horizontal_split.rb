class Refunge::Instructions::HorizontalSplit < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    cursor.change_direction_to(stack.pop == 0 ? :right : :left)
  end

end
