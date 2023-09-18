
puts 10 / 2

puts 10 / 4

puts 10 / 4.to_f

# because 10 /4 was evaluate first then convert to float so 2.0 is the answer
puts (10 / 4).to_f

# automatically convert 
puts 10 / 4.0

# generate string 
puts "-" * 20
20.times { print "-"}
20.times { |c| print c}
puts

# random generation
puts rand # will generate between 0.0 and 1.0
puts rand(20) # 1 <= x < 20
