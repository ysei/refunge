module Refunge
  module Instructions
    class VerticalSplit < Base

      def action
        ->(stack, cursor) do
          cursor.change_direction_to(stack.pop == 0 ? :down : :up)
        end
      end

    end
  end
end
