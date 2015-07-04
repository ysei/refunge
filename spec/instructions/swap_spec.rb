require "spec_helper"

describe Refunge::Instructions::Swap do
  attr_reader :token, :stack, :cursor, :output

  context "when the token is \\" do
    before(:each) do
      @token = "\\"
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
    end

    it "should swap the last two values in the stack" do
      @stack = Refunge::Stack.new(1, 2)
      described_class.new(token).execute(stack, cursor, output)
      expect(stack.last(2)).to eq([2, 1])
    end
  end
end
