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
  end
end