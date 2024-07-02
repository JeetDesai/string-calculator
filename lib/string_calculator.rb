class StringCalculator
  def self.add(string)
    return 0 if string.empty?
    result = string.scan(/\d+/).map(&:to_i).inject(:+)
    puts result
    result
  end
end

StringCalculator.add("//;\n1;2")