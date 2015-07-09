require "spec_helper"

describe Refunge::Instructions::Number do
  attr_reader :token, :stack, :cursor, :output, :code

  ("0".."9").each do |number|
    context "when the token is #{number}" do
      before(:each) do
        @token = number
        @stack = Refunge::Stack.new
        @cursor = Refunge::Cursor.new(1, 1)
        @output = []
        @code = Refunge::Program.new(" ")
      end

      it "should add numerical value to a stack" do
        mock.instance_of(Refunge::Stack).<<(number.to_i)
        described_class.new(token).execute(stack, cursor, output, code)
      end
    end
  end
end
