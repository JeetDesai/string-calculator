class StringCalculator
  def self.add(string)
    # Regular expression to match numbers, treating all non-digit characters as separators
    numbers = string.empty? ? [] : string.scan(/-?\d+/).map(&:to_i)

    # Find all negative numbers
    negatives = numbers.select { |n| n < 0 }
    raise("negative numbers not allowed: #{negatives.join(', ')}") unless negatives.empty?

    # This can be return in single line but I have added puts to show results.
    numbers.select!{|num| num <= 1000 }
    result = numbers.inject(0, :+)
    puts "Adding numbers #{string.inspect} will give results = #{result}"
    result
  end
end

StringCalculator.add("")
StringCalculator.add("6")
StringCalculator.add("1,2,6")
StringCalculator.add("1\n2,6")
StringCalculator.add("//;\n1;2")
StringCalculator.add("//;\n1;2(4,5^2")
StringCalculator.add("1001, 2, 3000")