module Refunge
  module Instructions
    class Swap < Base

      def execute(stack, cursor, output)
        stack.concat(stack.pop(2).reverse)
      end

    end
  end
end
