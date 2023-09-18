condition_a = true
condition_b = true

if condition_a && condition_b
  puts "both conditions are true"
else
  puts "both conditions are false"
end


puts "Enter first number"
num_1 = gets.chomp.to_i
puts "Enter second number"
num_2 = gets.chomp.to_i

def is_odd(number, message = "The number")
  if number % 2 == 0
    puts message + " is even"
  else 
    puts message +" is odd"
  end
end

is_odd(num_1, "The first number")
is_odd(num_2, "The second number")