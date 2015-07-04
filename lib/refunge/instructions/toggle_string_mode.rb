module Refunge
  module Instructions
    class ToggleStringMode < Base

      def execute(stack, cursor, output)
        stack.toggle_string_mode!
      end

    end
  end
end
