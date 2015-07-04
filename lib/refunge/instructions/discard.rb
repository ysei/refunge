module Refunge
  module Instructions
    class Discard < Base

      def execute(stack, cursor, output)
        stack.pop
      end

    end
  end
end
