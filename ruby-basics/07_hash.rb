# create hash - they are the same 
simple_hash = {a: 1, b: 2, c: 3} # symbol key
test_hash = {'a' => 1, 'b' => 2, 'c' => 3} # string key

# method hash
test_hash.each do |key, value| 
  puts "The key is #{key} and the value is #{value}"
  puts "The class of key is #{key.class} and the class of value is #{value.class}"
end

simple_hash.each do |key, value| 
  puts "The key is #{key} and the value is #{value}"
  puts "The class of key is #{key.class} and the class of value is #{value.class}"
end

simple_hash.keys.each do |key|
  puts "The key is #{key}"
end

# like filter in javascript
common = test_hash.select do |key, value|
  value > 2
end
puts common

# delete key to remove the pair
test_hash.each do |key, value|
  test_hash.delete(key) if value > 2
end
puts test_hash