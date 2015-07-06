require "refunge/instructions/base"
require "refunge/instructions/number"
require "refunge/instructions/addition"
require "refunge/instructions/subtraction"
require "refunge/instructions/multiplication"
require "refunge/instructions/division"
require "refunge/instructions/modulo"
require "refunge/instructions/inverse"
require "refunge/instructions/greater_than"
require "refunge/instructions/change_direction"
require "refunge/instructions/horizontal_split"
require "refunge/instructions/vertical_split"
require "refunge/instructions/toggle_string_mode"
require "refunge/instructions/ascii_push"
require "refunge/instructions/duplicate"
require "refunge/instructions/swap"
require "refunge/instructions/discard"
require "refunge/instructions/integer_output"
require "refunge/instructions/ascii_output"
require "refunge/instructions/trampoline"

module Refunge
  module Instructions
    INSTRUCTIONS = {
      ?0 => Number,
      ?1 => Number,
      ?2 => Number,
      ?3 => Number,
      ?4 => Number,
      ?5 => Number,
      ?6 => Number,
      ?7 => Number,
      ?8 => Number,
      ?9 => Number,
      ?+ => Addition,
      ?- => Subtraction,
      ?* => Multiplication,
      ?/ => Division,
      ?% => Modulo,
      ?! => Inverse,
      ?` => GreaterThan,
      ?> => ChangeDirection,
      ?v => ChangeDirection,
      ?< => ChangeDirection,
      ?^ => ChangeDirection,
      ?? => ChangeDirection,
      ?_ => HorizontalSplit,
      ?| => VerticalSplit,
      ?" => ToggleStringMode,
      ?: => Duplicate,
      ?\ => Swap,
      ?$ => Discard,
      ?. => IntegerOutput,
      ?. => AsciiOutput,
      ?# => Trampoline
    }

    def self.get(token)
      instruction_class = INSTRUCTIONS[token] || AsciiPush
      instruction_class.new(token)
    end

  end
end
