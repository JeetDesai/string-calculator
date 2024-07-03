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

    context "Delimiter can be any character, ex: //[***]\n1***2***3" do
      it "return 6" do
        expect(StringCalculator.add("[***]\n1***2***3")).to eq(6)
      end
    end

    context "Multiple delimiters, ex: //[*][%]\n1*2%3" do
      it "return 6" do
        expect(StringCalculator.add("[*][%]\n1*2%3")).to eq(6)
      end
    end

    context "Multiple delimiters with multiple characters, ex: //[***][%]\n1**42*2%3" do
      it "return 48" do
        expect(StringCalculator.add("[***][%]\n1**42*2%3")).to eq(48)
      end
    end

    context "Cube of numbers which will be 3 times in a string and sum with other numbers, ex: //[*][%]\n3*2%3*3;1" do
      it "return 30" do
        expect(StringCalculator.add("//[*][%]\n3*2%3*3;1")).to eq(30)
      end
    end

    27+26+4+1+8+333
    context "Cube of numbers which will be 3 times in a string and sum with other numbers, ex: //[*][%]\n3*2%333*3;1%4%2*26+3%3&2" do
      it "return 399" do
        expect(StringCalculator.add("//[*][%]\n3*2%333*3;1%4%2*26+3%3&2")).to eq(399)
      end
    end
  end
end