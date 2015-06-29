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
  def self.is_valid?(number)
    puts '' #blank line

    s = number
    puts "Number is #{s}"


    #turned number into array
    arr1 = s.to_s.split('')
    puts "Splitting gives us arr1 which is #{arr1}"

    # reverse arr1 array
    arr2 = arr1.reverse
    puts "Reverse gives us arr2 which is #{arr2}"

    #double every second digit then depending subtracting 9
    x = 0
    arr3 =[]
    arr2.each do |num|
    if x % 2 != 0
      num_double = num.to_i * 2
      if num_double >= 10
        arr3 << num_double -9
      else
        arr3 << num_double
      end
    else 
      arr3 << num.to_i
    end
    x += 1  
    end
    puts "Doubling every second digit and then if that num is >= 10 -9 gives us #{arr3}"

    #sum the didgits
    total = 0
    arr3.each do |num|
      total += num
    end
    puts "#{total}"
    
    #check if valid
    if total % 10 ==0
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
