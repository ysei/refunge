module Refunge
  module Instructions
    class Inverse < Base

      def action
        ->(stack, *args) { stack << (stack.pop == 0 ? 1 : 0) }
      end

    end
  end
end
