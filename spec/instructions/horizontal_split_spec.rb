require "spec_helper"

describe Refunge::Instructions::HorizontalSplit do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is _" do
    before(:each) do
      @token = ?_
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should pop a value" do
      @stack = Refunge::Stack.new(0)
      mock.proxy.instance_of(Refunge::Stack).pop
      described_class.new(token).execute(stack, cursor, output, code)
    end

    context "if the popped value is 0" do
      before(:each) do
        @stack = Refunge::Stack.new(0)
      end

      it "should change the direction to right" do
        mock.proxy.instance_of(Refunge::Cursor).change_direction_to(:right)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end

    context "if the popped value is not 0" do
      before(:each) do
        @stack = Refunge::Stack.new(1)
      end

      it "should change the direction to left" do
        mock.proxy.instance_of(Refunge::Cursor).change_direction_to(:left)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end
  end
end
