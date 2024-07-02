class StringCalculator
  def self.add(string)
    return 0 if string.empty?

    # Regular expression to match numbers, treating all non-digit characters as separators
    numbers = string.scan(/-?\d+/).map(&:to_i)

    # Find all negative numbers
    negatives = numbers.select { |n| n < 0 }
    raise("negative numbers not allowed: #{negatives.join(', ')}") unless negatives.empty?
    numbers.inject(0, :+)
  end
end