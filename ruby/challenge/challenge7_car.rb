#================
#繰り返し
#num = 0
#while i < 3 do
# ***繰り返したい式***
#  num += 1
#end
#================
system 'cls'

def banner1
  puts " "
end

def banner2
  put "="*45
end

system 'cls'
puts "A car app".center(40, '*')

banner1

puts "What is your name?"
i = gets.chomp

puts "Hi,#{i}! Please enter your passward for your login."

def passward
require "io/console"
puts "Please enter your 4-digit password."
banner1
print "Password: "
input = STDIN.noecho &:gets
print "\n"
puts "Entered => #{input}"
end
