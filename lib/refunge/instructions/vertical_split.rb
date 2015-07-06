class Refunge::Instructions::VerticalSplit < Refunge::Instructions::Base

  def execute(stack, cursor, output)
    cursor.change_direction_to(stack.pop == 0 ? :down : :up)
  end

end
