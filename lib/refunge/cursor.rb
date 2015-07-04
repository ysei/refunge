module Refunge
  class Cursor
    attr_reader :max_x,
                :max_y,
                :x,
                :y,
                :direction

    VALID_DIRECTIONS = %i(right down left up)

    def initialize(max_x, max_y)
      @max_x, @max_y = max_x - 1, max_y - 1
      @x, @y = 0, 0
      @direction = :right
    end

    def move!
      send(direction)
    end

    def change_direction_to(new_direction)
      unless VALID_DIRECTIONS.member?(new_direction)
        raise ArgumentError, "#{new_direction} is not a valid direction (#{VALID_DIRECTIONS.join(', ')})"
      end

      @direction = new_direction
    end

    def ==(position)
      to_a == position
    end

    def to_a
      [x, y]
    end

  private

    def left
      @x = x.zero? ? max_x : x - 1
    end

    def right
      @x = x == max_x ? 0 : x + 1
    end

    def up
      @y = y.zero? ? max_y : y - 1
    end

    def down
      @y = y == max_y ? 0 : y + 1
    end

  end
end
