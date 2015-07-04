module Refunge
  module Instructions
    class AsciiPush < Base

      def execute(stack, cursor, output)
        unless stack.string_mode?
          raise UnknownInstructionError, "#{token} is not a valid instruction"
        end

        stack << token.ord
      end

    end
  end
end
