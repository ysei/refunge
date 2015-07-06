module Refunge
  module Instructions
    class Trampoline < Base

      def execute(stack, cursor, output)
        cursor.move!
      end

    end
  end
end
