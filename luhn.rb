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
s= 4194560385008504


#turned number into array
arr1 = s.to_s.split('').map(&:to_i)


#now if only I knew how to access every other index

#doubled each number and put it into a new array
arr2 = arr1.map {|x| x * 2 }

#thought I could map a new array to subtract 9 from each item
#doesn't seem to be working
arr3 = arr2.map {|y| y - 9}

print arr1
puts
puts
print arr2
puts
puts
print arr3
