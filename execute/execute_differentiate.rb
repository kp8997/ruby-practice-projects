require 'json'

new_file = File.read('./sg_postal_codes_from_building.csv').split("\r\n").uniq
old_file = File.read('./sg_postal_codes.csv').split("\r\n").uniq

puts "new_file #{new_file.length}"
puts "old_file #{old_file.length}"

data = new_file - old_file


puts "differences #{data.length}"

File.write('./sg_differentiate_code.csv', data.join("\r\n"))
