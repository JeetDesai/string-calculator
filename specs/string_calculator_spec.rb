require 'string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    context "Empty string" do
      it "return 0" do
        expect(StringCalculator.add('')).to eq(0)
      end
    end

    context "Single number, ex: 3" do
      it "return 3" do
        expect(StringCalculator.add('3')).to eq(3)
      end
    end

    context "Comma separated numbers, ex: 1,2,6" do
      it "return 9" do
        expect(StringCalculator.add('1,2,6')).to eq(9)
      end
    end

    context "New line separated numbers, ex: 1\n2,6" do
      it "return 9" do
        expect(StringCalculator.add("1\n2,6")).to eq(9)
      end
    end

    context "Any delimiter should also be be consider as a separator, ex: //;\n1;2" do
      it "return 3" do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context "When input string has negative number, ex: 1,-2, 9, -5" do
      it "raises an exception with all negative numbers" do
        expect { StringCalculator.add("1,-2, 9, -5") }.to raise_error("negative numbers not allowed: -2, -5")
      end
    end

    context "Number bigger then 1000 should be ignored, ex: 1001, 2" do
      it "return 2" do
        expect(StringCalculator.add("1001, 2")).to eq(2)
      end
    end
  end
end