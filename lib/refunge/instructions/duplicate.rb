module Refunge
  module Instructions
    class Duplicate < Base

      def execute(stack, cursor, output)
        stack << stack.last
      end

    end
  end
end
