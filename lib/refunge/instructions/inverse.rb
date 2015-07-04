module Refunge
  module Instructions
    class Inverse < Base

      def execute(stack, cursor, output)
        stack << (stack.pop == 0 ? 1 : 0)
      end

    end
  end
end
