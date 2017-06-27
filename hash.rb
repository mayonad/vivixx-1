profile = {
  name: 'Joy',
  lastname: 'Will'
}

puts "previous name was #{profile[:name]}"
profile[:name] = 'Joyous'
puts "now its #{profile[:name]}"
profile.merge!({age:20, money: 1000})
puts "He's #{profile[:age]} years old"
puts "He's #{profile[:money]} euros"

puts "Name Changer"
puts "Enter the new name"
newName = gets.chomp
profile[:name] = newName
puts profile
puts "New name is #{profile[:name]} #{profile[:last_name]}"

puts "View Profile"
profile.each do |info|
  puts "#{info}"
end
