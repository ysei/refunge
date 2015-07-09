class Refunge::Instructions::AsciiPush < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    unless stack.string_mode?
      raise Refunge::UnknownInstructionError, "#{token} is not a valid instruction"
    end

    stack << token.ord
  end

end
