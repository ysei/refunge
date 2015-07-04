require "spec_helper"

describe Refunge::Instructions::ChangeDirection do
  attr_reader :token, :stack, :cursor, :output

  directions = {
    ?> => :right,
    ?v => :down,
    ?< => :left,
    ?^ => :up
  }

  directions.each do |token, direction|
    context "when the token is #{token}" do
      before(:each) do
        @stack = Refunge::Stack.new
        @cursor = Refunge::Cursor.new(1, 1)
        @output = []
      end

      it "should change direction to #{direction}" do
        mock.proxy.instance_of(Refunge::Cursor).change_direction_to(direction)
        described_class.new(token).execute(stack, cursor, output)
      end
    end
  end

  context "when the token is ?" do
    before(:each) do
      @token = ??
      @stack = Refunge::Stack.new
      @cursor = Refunge::Cursor.new(1, 1)
      @output = []
    end

    it "should change direction to a random direction" do
      mock.proxy.instance_of(Refunge::Cursor).change_direction_to(satisfy { |arg| directions.values.member?(arg) })
      described_class.new(token).execute(stack, cursor, output)
    end
  end
end
