module Refunge
  module Instructions
    class Multiplication < Base

      def action
        ->(stack, *args) do
          b, a = stack.pop(2)
          stack << a * b
        end
      end

    end
  end
end
