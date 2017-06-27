#================
#繰り返し
#num = 0
#while i < 3 do
# ***繰り返したい式***
#  num += 1
#end
#================
system 'cls'
num=0
while num < 20  do

puts " "
puts "VOTE".center(40, '*')
puts " "
puts "What is your name?"
name = gets.chomp
puts ""
puts "Hi,#{name}!Here is the name of candidates!"
puts ""
candidates = [
  {name: "Jenny", nationality: "Philipino", age: "30" },
  {name: "Kim  ", nationality: "Korean   ", age: "28" },
  {name: "Taro ", nationality: "Japanese ", age: "46"  },
  {name: "Ben  ", nationality: "American ", age: "38" },
]
puts '=' * 48
candidates.each do |info|
  puts  "Name: #{info[:name]} | Nationality: #{info[:nationality]} | Age: #{info[:age]}"
end
puts '=' * 48
puts ""
puts "*Please choose the first president for the new country of Vivixx*"
puts ""
chosen = gets.chomp

 if chosen == "Jenny"||chosen == "Kim"||chosen == "Taro"||chosen == "Ben  "
  puts ""
  puts "Thank you for voting!!"
 else
  puts " "
  puts "Wrong!  Please enter one more....!!"
  puts " "
 end
 num += 1
end
