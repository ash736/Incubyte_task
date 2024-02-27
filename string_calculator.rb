require 'byebug'

class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    # Not needed now as we alredy using in delimiter section
      # return numbers.to_i if numbers.size == 1
      # nums = numbers.split(",").map(&:to_i)
      # nums.reduce(:+)

    delimiter = ','

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n")[1]
    end

    nums = numbers.split(/#{delimiter}|\n/).map(&:to_i)
    negatives = nums.select { |num| num.negative? }
    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end
    nums.reduce(:+)
  end
end