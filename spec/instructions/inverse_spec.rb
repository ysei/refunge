require "spec_helper"

describe Refunge::Instructions::Inverse do

  context "when the token is !" do
    context "it should pop a value" do
      context "if the value is 0" do
        it "should push 1" do
          stack = Refunge::Stack.new
          stack << 0
          mock.proxy.instance_of(Refunge::Stack).pop
          mock.proxy.instance_of(Refunge::Stack).<<(1)
          described_class.new("!").call(stack)
        end
      end

      context "if the value is not 0" do
        it "should push 0" do
          stack = Refunge::Stack.new
          stack << 5
          mock.proxy.instance_of(Refunge::Stack).pop
          mock.proxy.instance_of(Refunge::Stack).<<(0)
          described_class.new("!").call(stack)
        end
      end
    end
  end

end
