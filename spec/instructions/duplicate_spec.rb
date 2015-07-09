require "spec_helper"

describe Refunge::Instructions::Duplicate do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is :" do
    before(:each) do
      @token = ?:
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should push the stack's last value onto the stack" do
      @stack = Refunge::Stack.new(5, 1)
      mock.proxy.instance_of(Refunge::Stack).<<(1)
      described_class.new(token).execute(stack, cursor, output, code)
    end
  end
end
