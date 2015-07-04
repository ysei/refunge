module Refunge
  module Instructions
    class ToggleStringMode < Base

      def action
        ->(stack, *args) do
          stack.toggle_string_mode!
        end
      end

    end
  end
end
