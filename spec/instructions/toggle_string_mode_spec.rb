require "spec_helper"

describe Refunge::Instructions::ToggleStringMode do
  attr_reader :token, :stack, :cursor, :output

  context "when the token is \"" do
    before(:each) do
      @token = ?"
      @stack = Refunge::Stack.new
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
    end

    it "should toggle string mode" do
      mock.proxy.instance_of(Refunge::Stack).toggle_string_mode!
      described_class.new(token).execute(stack, cursor, output)
    end
  end
end
