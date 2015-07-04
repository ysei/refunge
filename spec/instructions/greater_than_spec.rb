require "spec_helper"

describe Refunge::Instructions::GreaterThan do

  context "when the token is `" do
    context "it should pop two values (a and b)" do
      context "if b > a" do
        it "should push 1" do
          stack = Refunge::Stack.new(5, 1)
          mock.proxy.instance_of(Refunge::Stack).pop(2)
          mock.proxy.instance_of(Refunge::Stack).<<(1)
          described_class.new("`").call(stack)
        end
      end

      context "if b < a" do
        it "should push 0" do
          stack = Refunge::Stack.new(1, 5)
          mock.proxy.instance_of(Refunge::Stack).pop(2)
          mock.proxy.instance_of(Refunge::Stack).<<(0)
          described_class.new("`").call(stack)
        end
      end
    end
  end

end
