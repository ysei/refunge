module Refunge
  module Instructions
    class AsciiOutput < Base

      def execute(stack, cursor, output)
        output << stack.pop.chr
      end

    end
  end
end
