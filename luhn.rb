=begin
arr2=[]
arr.each do |i|
 x = 0
  while x < arr.length
 arr2 << arr[x+1]
 x += 1
end

end
 print arr2


a = [1,2,3,4,5,6]
print a.collect {|x| x * 2}
print a.map.with_index {|x, i| x[i + 1]}
=end

# Include the minitest autorun library. This will let us run tests
require 'minitest/autorun'

# Write the implementation
module Luhn
  def self.luhn_magic(integer, odd_even)
    if odd_even % 2 != 0
      doubled = integer * 2
      doubled -= 9 if doubled >= 10
      doubled
    else
      integer # 3
    end
  end

  def self.is_valid?(number)
    puts "" #blank line

    #turned number into array
    right_to_left = number.to_s.split("").map(&:to_i).reverse
    puts "Splitting gives us right_to_left which is #{right_to_left}"

    #double every second digit then depending subtracting 9
    total = 0

    right_to_left.each_with_index do |num, i|
      total += luhn_magic(num, i)
    end

    puts "#{total}"

    #check if valid
    if total % 10 == 0
      puts "Credit card number is valid."
      return true
    else
      puts "Credit card number is invalid."
      return false
    end
  end
end


# Write some tests. These will automatically run when you run this file.
class TestLuhn < MiniTest::Unit::TestCase

  def test_luhn_valid
    assert Luhn.is_valid?(4194560385008504)
  end

  def test_luhn_invalid
    assert ! Luhn.is_valid?(4194560385008505)
  end

end
