module Refunge
  module Instructions
    class GreaterThan < Base

      def action
        ->(stack, *args) do
          b, a = stack.pop(2)
          stack << (b > a ? 1 : 0)
        end
      end

    end
  end
end
