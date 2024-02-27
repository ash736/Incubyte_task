require 'rspec'
require_relative 'string_calculator'

describe StringCalculator do
  describe ".add" do
    context "when the input is an empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "when the input is a single number" do
      it "returns the number itself" do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

     context "when the input contains two numbers or more separated by a comma" do
      it "returns the sum of the numbers" do
        expect(StringCalculator.add("1,5")).to eq(6)
      end
    end

    context "when the input contains new lines between numbers" do
      it "treats new lines as delimiters and returns the sum" do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context "when the input contains a different delimiter" do
      it "uses the custom delimiter and returns the sum" do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context "when the input contains negative numbers" do
      it "raises an error with the negative numbers" do
        expect { StringCalculator.add("1,-2,3,-4") }.to raise_error("Negative numbers not allowed: -2, -4")
      end
    end

  end
end