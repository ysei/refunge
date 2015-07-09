require "spec_helper"

describe Refunge::Instructions::Put do
  attr_reader :token, :stack, :cursor, :output, :code

  context "when the token is p" do
    before(:each) do
      @token = ?p
      @cursor = Refunge::Cursor.new(1, 1)
      @stack = Refunge::Stack.new(97, 2, 1)
      @output = []
      @code = Refunge::Program.new(" ")
    end

    it "should pop 3 values" do
      mock.proxy.instance_of(Refunge::Stack).pop(3)
      described_class.new(token).execute(stack, cursor, output, code)
    end

    it "should insert the ascii character of third popped value into the code at [second popped, first popped]" do
      mock.proxy.instance_of(Refunge::Program).insert(2, 1, 97)
      described_class.new(token).execute(stack, cursor, output, code)
    end
  end

end
