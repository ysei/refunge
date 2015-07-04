require "spec_helper"

describe Refunge::Instructions::Duplicate do
  attr_reader :token, :stack

  context "when the token is :" do
    before(:each) do
      @token = ?:
    end

    it "should push the stack's last value onto the stack" do
      @stack = Refunge::Stack.new(5, 1)
      mock.proxy.instance_of(Refunge::Stack).<<(1)
      described_class.new(token).call(stack)
    end
  end
end
