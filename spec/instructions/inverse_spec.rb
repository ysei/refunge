require "spec_helper"

describe Refunge::Instructions::Inverse do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is !" do
    before(:each) do
      @token = ?!
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should pop a value" do
      @stack = Refunge::Stack.new(0)
      mock.proxy.instance_of(Refunge::Stack).pop
      described_class.new(token).execute(stack, cursor, output, code)
    end

    context "if the value is 0" do
      before(:each) do
        @stack = Refunge::Stack.new(0)
      end

      it "should push 1" do
        mock.proxy.instance_of(Refunge::Stack).<<(1)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end

    context "if the value is not 0" do
      before(:each) do
        @stack = Refunge::Stack.new(5)
      end

      it "should push 0" do
        mock.proxy.instance_of(Refunge::Stack).<<(0)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end
  end
end
