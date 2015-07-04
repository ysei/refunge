module Refunge
  module Instructions
    class IntegerOutput < Base

      def execute(stack, cursor, output)
        output << stack.pop
      end

    end
  end
end
