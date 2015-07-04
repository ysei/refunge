module Refunge
  module Instructions
    class Modulo < Base

      def execute(stack, cursor, output)
        b, a = stack.pop(2)
        stack << b % a
      end

    end
  end
end
