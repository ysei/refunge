require "spec_helper"

describe Refunge::Instructions::Get do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is g" do
    before(:each) do
      @token = ?g
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new("va\n@")
    end

    it "should pop 2 values" do
      @stack = Refunge::Stack.new(1, 0)
      mock.proxy.instance_of(Refunge::Stack).pop(2)
      described_class.new(token).execute(stack, cursor, output, code)
    end

    context "with [second popped, first_popped] in range" do
      before(:each) do
        @stack = Refunge::Stack.new(1, 0)
      end

      it "should push the ascii value of instruction at that location onto the stack" do
        mock.proxy.instance_of(Refunge::Stack).<<(97)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end

    context "with [second popped, first_popped] not in range" do
      before(:each) do
        @stack = Refunge::Stack.new(100, 0)
      end

      it "should push 0 onto the stack" do
        mock.proxy.instance_of(Refunge::Stack).<<(0)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end
  end

end
