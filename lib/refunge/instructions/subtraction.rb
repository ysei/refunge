module Refunge
  module Instructions
    class Subtraction < Base

      def action
        ->(stack, *args) do
          b, a = stack.pop(2)
          stack << b - a
        end
      end

    end
  end
end
