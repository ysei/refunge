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

    it "should raise an exception if asked for a point that is outside the range of the program" do
      expect { program.instruction_at(100, 100) }.to raise_error(Refunge::InvalidInstructionLocationError)
    end
  end

end
