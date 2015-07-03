require "spec_helper"

describe Refunge::Instructions::Modulo do

  context "when the token is %" do
    it "should pop two values, divide them, and add the remainder to the stack" do
      stack = Refunge::Stack.new
      stack << 2
      stack << 5
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      mock.proxy.instance_of(Refunge::Stack).<<(2)
      described_class.new("%").call(stack)
    end
  end

end
