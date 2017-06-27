
puts "Wellcome!!"
gets
puts "Here is japanese food!"
menu = [
  {item: "Sushi", price: 100, calorie: 400 },
  {item: "Okonomiyaki", price: 50, calorie: 700 },
  {item: "Takoyaki", price: 80, calorie: 400 },
  {item: "Gyudon", price: 80, calorie: 400 },
]
puts menu
gets
puts "What do you want to oeder?"
menu.each do |food|
chosen = gets.chomp
if chosen==food[:item]
puts "How many servings do you want?"
number = gets.chomp.to_i
total = number * food [:price]
puts "Your change would be P#{total}"
puts "How much is your money?"
   money = gets.chomp.to_i
puts "Your change would be P#{money - food [:price]}"
end
end
