require "spec_helper"

describe Refunge::Instructions::Addition do

  context "when the token is +" do
    it "should pop two values, add them together, and add the sum to the stack" do
      stack = Refunge::Stack.new
      stack << 1
      stack << 2
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      mock.proxy.instance_of(Refunge::Stack).<<(3)
      described_class.new("+").call(stack)
    end
  end

end
