class Refunge::Instructions::ToggleStringMode < Refunge::Instructions::Base

  def execute(stack, cursor, output, code)
    stack.toggle_string_mode!
  end

end
