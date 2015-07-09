require "spec_helper"

describe Refunge::Program do
  attr_reader :program

  before(:each) do
    raw_program = <<-BEFUNGE
v>>>>>v
12345
^?^
> ? ?^
v?v
6789
>>>> v
^    .<
    BEFUNGE

    @program = described_class.new(raw_program)
  end

  context "when loading a program" do
    it "should pad the lines so that all the lines are equal" do
      program.code.each do |line|
        expect(line.length).to eq(7)
      end
    end
  end

  context "when asking for an instruction at a given point" do
    it "should give the right instruction if given a valid point" do
      expect(program.instruction_at(2, 5)).to eq("8")
    end
  end

  context "when inserting a value" do
    it "should reset the width" do
      program.insert(50, 50, 97)
      expect(program.width).to eq(51)
    end

    it "should reset the height" do
      program.insert(100, 100, 97)
      expect(program.height).to eq(101)
    end
  end
end
