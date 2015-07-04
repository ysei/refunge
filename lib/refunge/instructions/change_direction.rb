module Refunge
  module Instructions
    class ChangeDirection < Base

      DIRECTIONS = {
        ?> => :right,
        ?v => :down,
        ?< => :left,
        ?^ => :up
      }

      def execute(stack, cursor, output)
        cursor.change_direction_to direction
      end

    private

      def direction
        return DIRECTIONS.values.sample if token == ??
        DIRECTIONS[token]
      end

    end
  end
end
