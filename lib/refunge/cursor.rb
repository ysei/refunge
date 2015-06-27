module Refunge
  class Cursor
    attr_reader :max_x,
                :max_y,
                :x,
                :y

    def initialize(max_x, max_y)
      @max_x, @max_y = max_x - 1, max_y - 1
      @x, @y = 0, 0
    end

    def move(direction)
      send(direction)
    end

    def ==(position)
      [x, y] == position
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
