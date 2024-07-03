class StringCalculator
  def self.add(string)
    numbers = string.empty? ? [] : string.scan(/-?\d+/).map(&:to_i)
    self.check_negative_numbers(numbers)
    numbers.select!{|num| num <= 1000 }
    cube_the_numbers(numbers).inject(0, :+)
  end

  def self.check_negative_numbers(numbers)
    negatives = numbers.select { |n| n < 0 }
    raise("negative numbers not allowed: #{negatives.join(', ')}") if negatives.any?
  end

  def self.cube_the_numbers(numbers)
    trice_number = numbers.select {|n| numbers.count(n) > 2 }.uniq
    return numbers if trice_number.empty?
    cube_numbers = trice_number.map{|n| n**3}.inject(0, :+)
    numbers.reject!{|x| trice_number.include?(x)}.push(cube_numbers)
  end

end