module Refunge
  module Instructions
    class HorizontalSplit < Base

      def action
        ->(stack, cursor) do
          cursor.change_direction_to(stack.pop == 0 ? :right : :left)
        end
      end

    end
  end
end
