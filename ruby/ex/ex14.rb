puts "Hello! What's your order?"
menu = [
  {item: "Sushi", price: 100, calorie: 400 },
  {item: "okonomiyaki", price: 50, calorie: 700 },
  {item: "takoyaki", price: 80, calorie: 400 },
  {item: "gyudon", price: 80, calorie: 400 },
  ]

puts menu
gets
puts "What do you want?"
chosen = gets.chomp
menu.each do |food|
if chosen==food[:item]
  puts food[:price]
end
end
