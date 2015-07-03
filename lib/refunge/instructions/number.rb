module Refunge
  module Instructions
    class Number < Base

      def action
        ->(stack, *args){ stack << token.to_i }
      end

    end
  end
end
