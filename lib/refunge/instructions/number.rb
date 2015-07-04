module Refunge
  module Instructions
    class Number < Base

      def execute(stack, cursor, output)
        stack << token.to_i
      end

    end
  end
end
