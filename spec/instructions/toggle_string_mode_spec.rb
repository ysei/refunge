require "spec_helper"

describe Refunge::Instructions::ToggleStringMode do
  attr_reader :token, :stack

  context "when the token is \"" do
    before(:each) do
      @token = ?"
      @stack = Refunge::Stack.new
    end

    it "should toggle string mode" do
      mock.proxy.instance_of(Refunge::Stack).toggle_string_mode!
      described_class.new(token).call(stack)
    end
  end
end
