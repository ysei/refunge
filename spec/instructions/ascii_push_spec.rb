require "spec_helper"

describe Refunge::Instructions::AsciiPush do
  attr_reader :token, :stack

  before(:each) do
    @token = ("a".."z").to_a.sample
    @stack = Refunge::Stack.new(1, 2)
  end

  context "when string mode is on" do
    before(:each) do
      stack.toggle_string_mode!
    end

    it "should append the token's ASCII value to the stack" do
      mock.proxy.instance_of(Refunge::Stack).<<(token.ord)
      described_class.new(token).call(stack)
    end
  end

  context "when string mode is off" do
    it "raise an exception" do
      expect { described_class.new(token).call(stack) }.to raise_error(Refunge::UnknownInstructionError)
    end
  end
end
