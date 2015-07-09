require "spec_helper"

describe Refunge::Instructions::AsciiOutput do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is ," do
    before(:each) do
      @token = ?,
      @stack = Refunge::Stack.new(99, 98, 97)
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should pop a value" do
      mock.proxy.instance_of(Refunge::Stack).pop
      described_class.new(token).execute(stack, cursor, output, code)
    end

    it "should push the popped value into the output" do
      described_class.new(token).execute(stack, cursor, output, code)
      expect(output.last).to eq("a")
    end
  end
end
