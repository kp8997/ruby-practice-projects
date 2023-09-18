first = "hello" 
last = "world"

# concatenation
puts first + last

# string interpolation
puts "#{first} #{last}"

# find method
first.methods

# common methods
## class
puts first.class
puts 12.class
##
puts first.empty?
## chain & conversion
puts 12.to_s.class
## replace 
puts first.sub("hello", "greeting")
## reverse
puts last.reverse

# escape
## backslash
puts 'he said \'i have a new girl friend\''

# variable assignment
## when assign new variable to an existence variable
## it's actually point to the value reference of that variable, in this case it is pointed to "name" address/reference
a = "name"
b = a
a = "age"
puts a
puts b

# get input
puts "enter a number here => result will be pow by 2"
num = gets.chomp
puts "result is #{2 ** num.to_i}"