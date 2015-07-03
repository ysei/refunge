module Refunge
  module Instructions
    class Division < Base

      def action
        ->(stack, *args) do
          a, b = stack.pop(2)
          stack << b / a
        end
      end

    end
  end
end
