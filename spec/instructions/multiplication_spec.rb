require "spec_helper"

describe Refunge::Instructions::Multiplication do

  context "when the token is *" do
    it "should pop two values, multiply them together, and add the product to the stack" do
      stack = Refunge::Stack.new
      stack << 1
      stack << 2
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      mock.proxy.instance_of(Refunge::Stack).<<(2)
      described_class.new("*").call(stack)
    end
  end

end
