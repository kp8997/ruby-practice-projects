def add(first_num, second_num)
  first_num.to_i + second_num.to_i
end

def sub(first_num, second_num)
  first_num.to_i - second_num.to_i
end

def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
  first_num.to_f / second_num.to_f
end

puts "Enter first number"
num_1 = gets.chomp
puts "Enter second number"
num_2 = gets.chomp
puts "Result by adding number 1 and number 2 are #{add(num_1, num_2)}"
puts "Result by substracting number 1 and number 2 are #{sub(num_1, num_2)}"
puts "Result by multiplying number 1 and number 2 are #{multiply(num_1, num_2)}"
puts "Result by dividing number 1 and number 2 are #{divide(num_1, num_2.to_f)}"
