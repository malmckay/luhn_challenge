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


    #now if only I knew how to access every other index

    #doubled each number and put it into a new array
    arr2 = arr1.map {|x| x * 2 }
    puts "Multiplying by 2 gives us arr2 which is #{arr2}"

    #thought I could map a new array to subtract 9 from each item
    #doesn't seem to be working
    arr3 = arr2.map {|y| y - 9}
    puts "Subtracting 9 gives us arr3 which is #{arr3}"

    puts "Done!"
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
