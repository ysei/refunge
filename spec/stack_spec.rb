require "spec_helper"

describe Refunge::Stack do
  attr_reader :stack

  context "when creating a new stack" do
    it "should accept arguments to put in the stack first" do
      @stack = Refunge::Stack.new(1, 2)
      expect(stack.pop).to eq(2)
      expect(stack.pop).to eq(1)
    end
  end

  context "when appending to the stack" do
    before(:each) do
      @stack = Refunge::Stack.new
    end

    context "and not in string mode" do
      it "should just append the value to the stack" do
        stack << 1
        expect(stack.pop).to eq(1)
      end
    end

    context "and in string mode" do
      before(:each) do
        stack.toggle_string_mode!
      end

      it "should just append the ascii value of the appended value to the stack" do
        stack << "a"
        expect(stack.pop).to eq(97)
      end
    end
  end

end
