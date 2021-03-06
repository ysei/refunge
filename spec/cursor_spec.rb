require "spec_helper"

describe Refunge::Cursor do
  attr_reader :cursor

  context "when moving left" do
    before(:each) do
      @cursor = described_class.new(10, 10)
      cursor.change_direction_to :left
    end

    context "when x is at 0" do
      it "should move to the end" do
        cursor.move!
        expect(cursor.x).to eq(9)
      end
    end

    context "when x is not at 0" do
      it "should move one place to the left" do
        2.times { cursor.move! }
        expect(cursor.x).to eq(8)
      end
    end
  end

  context "when moving right" do
    before(:each) do
      @cursor = described_class.new(10, 10)
      cursor.change_direction_to :right
    end

    context "and x is not at the end" do
      it "should move one place to the right" do
        cursor.move!
        expect(cursor.x).to eq(1)
      end
    end

    context "and x is at the end" do
      it "should move to the beginning" do
        (cursor.max_x + 1).times { cursor.move! }
        expect(cursor.x).to eq(0)
      end
    end
  end

  context "when moving up" do
    before(:each) do
      @cursor = described_class.new(10, 10)
      cursor.change_direction_to :up
    end

    context "and y is at 0" do
      it "should move to the end" do
        cursor.move!
        expect(cursor.y).to eq(9)
      end
    end

    context "and y is not at 0" do
      it "should move one place up" do
        2.times { cursor.move! }
        expect(cursor.y).to eq(8)
      end
    end
  end

  context "when moving down" do
    before(:each) do
      @cursor = described_class.new(10, 10)
      cursor.change_direction_to :down
    end

    context "and y is not at the end" do
      it "should move one place to the right" do
        cursor.move!
        expect(cursor.y).to eq(1)
      end
    end

    context "and x is at the end" do
      it "should move to the beginning" do
        (cursor.max_y + 1).times { cursor.move! }
        expect(cursor.y).to eq(0)
      end
    end
  end
end
