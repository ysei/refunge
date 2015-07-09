class Refunge::Instructions::VerticalSplit < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    cursor.change_direction_to(stack.pop == 0 ? :down : :up)
  end

end
