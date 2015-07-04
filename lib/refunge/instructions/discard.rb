module Refunge
  module Instructions
    class Discard < Base

      def action
        ->(stack, *args) do
          stack.pop
        end
      end

    end
  end
end
