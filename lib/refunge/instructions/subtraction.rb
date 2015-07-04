module Refunge
  module Instructions
    class Subtraction < Base

      def execute(stack, cursor, output)
        b, a = stack.pop(2)
        stack << b - a
      end

    end
  end
end
