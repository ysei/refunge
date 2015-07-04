require "spec_helper"

describe Refunge::Instructions::Number do
  attr_reader :token, :stack, :cursor, :output

  ("0".."9").each do |number|
    context "when the token is #{number}" do
      before(:each) do
        @token = number
        @stack = Refunge::Stack.new
        @cursor = Refunge::Cursor.new(1, 1)
        @output = []
      end

      it "should add numerical value to a stack" do
        mock.instance_of(Refunge::Stack).<<(number.to_i)
        described_class.new(token).execute(stack, cursor, output)
      end
    end
  end
end
