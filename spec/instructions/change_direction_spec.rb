require "spec_helper"

describe Refunge::Instructions::ChangeDirection do

  directions = {
    ?> => :right,
    ?v => :down,
    ?< => :left,
    ?^ => :up
  }

  directions.each do |token, direction|
    context "when the token is #{token}" do
      it "should change direction to #{direction}" do
        stack = Refunge::Stack.new
        cursor = Refunge::Cursor.new(1, 1)
        mock.proxy.instance_of(Refunge::Cursor).change_direction_to(direction)
        described_class.new(token).call(stack, cursor)
      end
    end
  end

  context "when the token is ?" do
    it "should change direction to a random direction" do
      stack = Refunge::Stack.new
      cursor = Refunge::Cursor.new(1, 1)
      mock.proxy.instance_of(Refunge::Cursor).change_direction_to(satisfy { |arg| directions.values.member?(arg) })
      described_class.new("?").call(stack, cursor)
    end
  end

end
