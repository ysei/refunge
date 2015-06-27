require "spec_helper"

describe Refunge::Instructions::Number do

  ("0".."9").each do |number|
    context "when the token is #{number}" do
      it "should add numerical value to a stack" do
        mock.instance_of(Refunge::Stack).<<(number.to_i)
        described_class.new(number).call(Refunge::Stack.new)
      end
    end
  end

end
