require "spec_helper"

describe Refunge::Instructions::Subtraction do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is -" do
    before(:each) do
      @token = ?-
      @stack = Refunge::Stack.new(1, 2)
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should pop two values from the stack" do
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      described_class.new(token).execute(stack, cursor, output, code)
    end

    it "should subtract them and add the difference to the stack" do
      mock.proxy.instance_of(Refunge::Stack).<<(-1)
      described_class.new(token).execute(stack, cursor, output, code)
    end
  end

end
