require "spec_helper"

describe Refunge::Instructions::Trampoline do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is #" do
    before(:each) do
      @token = ?#
      @stack = Refunge::Stack.new(1, 2)
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should skip the next cell" do
      mock.proxy.instance_of(Refunge::Cursor).move!
      described_class.new(token).execute(stack, cursor, output, code)
    end
  end
end
