require 'byebug'

class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.size == 1
    nums = numbers.split(",").map(&:to_i)
    nums.reduce(:+)
  end
end