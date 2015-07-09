require "spec_helper"

describe Refunge::Instructions::Discard do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is $" do
    before(:each) do
      @token = ?$
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should pop a value from the stack and do nothing with it" do
      @stack = Refunge::Stack.new(1, 2)
      described_class.new(token).execute(stack, cursor, output, code)
      expect(stack.last).to eq(1)
    end
  end
end
