@users = [
  { username: "user1", password: "password1" },
  { username: "user2", password: "password2" },
  { username: "user3", password: "password3" }
]

def auth_user(username, password)
  @users.select do |user|
    user[:username] == username && user[:password] == password
  end
end

puts "Welcome to the authenticator"
p "=" * 25

puts "Enter username"
username = gets.chomp!

puts "Enter your password"
password = gets.chomp!

if auth_user(username, password).any?
  puts "You are logged in"
else
  puts "Credentials were not correct"
end


