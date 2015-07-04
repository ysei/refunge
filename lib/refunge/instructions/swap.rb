module Refunge
  module Instructions
    class Swap < Base

      def action
        ->(stack, *args) do
          stack.concat(stack.pop(2).reverse)
        end
      end

    end
  end
end
