puts "Hello! What's your order?"

puts "The only available dishes today are sushi, okonomiyaki, takoyaki, and gyudon."
orders = gets.chomp

case orders
when "sushi"
  puts "Sushi is worth 100 per serving."
  sushi = 100
  puts "How many servings do you want?"
  number = gets.chomp.to_i
  total = number * sushi
  puts "That would be a total of P#{total}. Thank you!"
when "okonomiyaki"
  puts "That would be 140 per serving."
  okonomiyaki = 140
  puts "How many servings do you want?"
  number = gets.chomp.to_i
  total = number * okonomiyaki
  puts "That would be a total of P#{total}. Thank you!"
when "Takoyaki"
  puts "It's 80 per serving."
  takoyaki = 80
  puts "How many servings do you want?"
  number = gets.chomp.to_i
  total = number * takoyaki
  puts "That would be a total of P#{total}. Thank you!"
when "gyudon"
  puts "That's 150 per serving."
  gyudon = 150
  puts "How many servings do you want?"
  number = gets.chomp.to_i
  total = number * gyudon
  puts "That would be a total of P#{total}. Thank you!"

puts "How much is your money?"
 money = gets.chomp.to_i
puts "Your change would be P#{money - total}"

end
