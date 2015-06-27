module Refunge
  module Instructions
    class Number < Base

      def action
        ->(stack){ stack << token.to_i }
      end

    end
  end
end
