module Refunge
  module Instructions
    class Multiplication < Base

      def execute(stack, cursor, output)
        b, a = stack.pop(2)
        stack << a * b
      end

    end
  end
end
