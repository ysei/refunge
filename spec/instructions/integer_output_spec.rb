require "spec_helper"

describe Refunge::Instructions::IntegerOutput do
  attr_reader :token, :stack, :cursor, :output

  context "when the token is ." do
    before(:each) do
      @token = ?.
      @stack = Refunge::Stack.new(1, 2)
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
    end

    it "should pop a value" do
      mock.proxy.instance_of(Refunge::Stack).pop
      described_class.new(token).execute(stack, cursor, output)
    end

    it "should push the popped value into the output" do
      described_class.new(token).execute(stack, cursor, output)
      expect(output.last).to eq(2)
    end
  end
end
