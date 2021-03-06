require "spec_helper"

describe Refunge::Instructions::GreaterThan do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is `" do
    before(:each) do
      @token = ?`
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should pop two values (a and b)" do
      @stack = Refunge::Stack.new(5, 1)
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      described_class.new(token).execute(stack, cursor, output, code)
    end

    context "if b > a" do
      before(:each) do
        @stack = Refunge::Stack.new(5, 1)
      end

      it "should push 1" do
        mock.proxy.instance_of(Refunge::Stack).<<(1)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end

    context "if b < a" do
      before(:each) do
        @stack = Refunge::Stack.new(1, 5)
      end

      it "should push 0" do
        mock.proxy.instance_of(Refunge::Stack).<<(0)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end
  end
end
