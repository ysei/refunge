module Refunge
  module Instructions
    class AsciiPush < Base

      def action
        ->(stack, *args) do
          unless stack.string_mode?
            raise UnknownInstructionError, "#{token} is not a valid instruction"
          end

          stack << token.ord
        end
      end

    end
  end
end
