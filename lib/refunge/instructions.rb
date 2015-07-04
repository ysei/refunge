require "refunge/instructions/base"
require "refunge/instructions/number"
require "refunge/instructions/addition"
require "refunge/instructions/subtraction"
require "refunge/instructions/multiplication"
require "refunge/instructions/division"
require "refunge/instructions/modulo"
require "refunge/instructions/inverse"
require "refunge/instructions/greater_than"

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
      ?` => GreaterThan
    }

    class UnknownInstructionError < ArgumentError; end

    def self.get(token)
      instruction_klass = INSTRUCTIONS[token]

      if instruction_klass.nil?
        raise UnknownInstructionError, "#{token} is not a valid instruction"
      end

      instruction_klass.new(token)
    end

  end
end
