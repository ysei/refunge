require "spec_helper"

describe Refunge::Instructions::VerticalSplit do
  attr_reader :token, :stack, :cursor

  context "when the token is |" do
    before(:each) do
      @token = ?|
      @cursor = Refunge::Cursor.new(1, 1)
    end

    it "should pop a value" do
      @stack = Refunge::Stack.new(0)
      mock.proxy.instance_of(Refunge::Stack).pop
      described_class.new(token).call(stack, cursor)
    end

    context "if the popped value is 0" do
      before(:each) do
        @stack = Refunge::Stack.new(0)
      end

      it "should change the direction to down" do
        mock.proxy.instance_of(Refunge::Cursor).change_direction_to(:down)
        described_class.new(token).call(stack, cursor)
      end
    end

    context "if the popped value is not 0" do
      before(:each) do
        @stack = Refunge::Stack.new(1)
      end

      it "should change the direction to up" do
        mock.proxy.instance_of(Refunge::Cursor).change_direction_to(:up)
        described_class.new(token).call(stack, cursor)
      end
    end
  end
end
