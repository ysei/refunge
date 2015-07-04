require "spec_helper"

describe Refunge::Instructions::Subtraction do
  attr_reader :token, :stack

  context "when the token is -" do
    before(:each) do
      @token = ?-
      @stack = Refunge::Stack.new(1, 2)
    end

    it "should pop two values from the stack" do
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      described_class.new(token).call(stack)
    end

    it "should subtract them and add the difference to the stack" do
      mock.proxy.instance_of(Refunge::Stack).<<(-1)
      described_class.new(token).call(stack)
    end
  end

end
