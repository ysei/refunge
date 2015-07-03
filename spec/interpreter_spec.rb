require "spec_helper"

describe Refunge::Interpreter do
  attr_reader :interpreter

  context "on initialize" do
    before(:each) do
      @interpreter = described_class.new(" ")
    end

    it "should set the cursor at 0, 0" do
      expect(interpreter.cursor).to eq([0, 0])
    end

    it "should set the initial direction as right" do
      expect(interpreter.direction).to eq(:right)
    end
  end
end
