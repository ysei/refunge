module Refunge
  module Instructions
    class Duplicate < Base

      def action
        ->(stack, *args) do
          stack << stack.last
        end
      end

    end
  end
end
