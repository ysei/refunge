require "spec_helper"

describe Refunge::Instructions::Subtraction do

  context "when the token is -" do
    it "should pop two values, subtract them, and add the difference to the stack" do
      stack = Refunge::Stack.new(1, 2)
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      mock.proxy.instance_of(Refunge::Stack).<<(-1)
      described_class.new("-").call(stack)
    end
  end

end
