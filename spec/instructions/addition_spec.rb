require "spec_helper"

describe Refunge::Instructions::Addition do
  attr_reader :token, :stack, :cursor, :output

  context "when the token is +" do
    before(:each) do
      @token = ?+
      @stack = Refunge::Stack.new(1, 2)
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
    end

    it "should pop two values from the stack" do
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      described_class.new(token).execute(stack, cursor, output)
    end

    it "should add the two popped values together and add the sum to the stack" do
      mock.proxy.instance_of(Refunge::Stack).<<(3)
      described_class.new(token).execute(stack, cursor, output)
    end
  end
end
