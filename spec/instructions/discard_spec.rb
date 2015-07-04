require "spec_helper"

describe Refunge::Instructions::Discard do
  attr_reader :token, :stack

  context "when the token is $" do
    before(:each) do
      @token = ?$
    end

    it "should pop a value from the stack and do nothing with it" do
      @stack = Refunge::Stack.new(1, 2)
      described_class.new(token).call(stack)
      expect(stack.last).to eq(1)
    end
  end
end
