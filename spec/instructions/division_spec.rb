require "spec_helper"

describe Refunge::Instructions::Division do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is /" do
    before(:each) do
      @token = ?/
      @stack = Refunge::Stack.new(2, 1)
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should pop two values from the stack" do
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      described_class.new(token).execute(stack, cursor, output, code)
    end

    it "should divide the two values and add the quotient to the stack" do
      mock.proxy.instance_of(Refunge::Stack).<<(2)
      described_class.new(token).execute(stack, cursor, output, code)
    end

    context "when the division would result in a float" do
      before(:each) do
        @stack = Refunge::Stack.new(1, 2)
      end

      it "should round the quotient down" do
        mock.proxy.instance_of(Refunge::Stack).<<(0)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end
  end
end
