require "spec_helper"

describe Refunge::Instructions::Division do

  context "when the token is /" do
    it "should pop two values, divide them, and add the quotient to the stack" do
      stack = Refunge::Stack.new
      stack << 1
      stack << 2
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      mock.proxy.instance_of(Refunge::Stack).<<(0)
      described_class.new("/").call(stack)
    end
  end

end
