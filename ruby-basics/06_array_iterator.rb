arr = [1,2,3,4,5,6,7,8,9,0]

# first
print arr.first
puts
print arr.first(3)
puts

# last
print arr.last
puts
print arr.last(3)
puts

# rapidly create from symbol and string
a_arr = %w(hello this is my new study corner)
print a_arr
puts

# create a numbers range 
b_range = 1..100

# shuffle
b_arr = b_range.to_a.shuffle!
b_arr.shuffle

# create a strings range
s_range = "a".."z"
s_arr = s_range.to_a
s_arr.shuffle!

# length
puts "Length of string range is #{s_arr.length}"

# concatenation (tail adding)
b_arr << 89
s_arr << ["I", "am", "special"]
s_arr.flatten!

# unshift (head adding)
b_arr.unshift(44444)

# shift (head removing)
b_arr.shift(1) # == b_arr.shift

# push (tail adding)
s_arr.push("brilliant")

# pop (tail removing)
s_arr.pop(1) # b_arr.pop

print s_arr
puts

print b_arr
puts

# unique
d_arr = [1,3,4,4,4,4,4]
d_arr.uniq!
print d_arr
puts

# empty? include? 
puts d_arr.include?(1)
puts d_arr.empty?

# join, split
j_str = d_arr.join(",")
puts j_str
print j_str.split(",")
puts

# for in
puts "for i in d_arr "
for i in d_arr
  print i
end
puts

# for each
puts "s_arr.each "
s_arr.each { |s| print s}
puts

# select - like filter in javascript
print d_arr.select {|n| n > 1}
puts
