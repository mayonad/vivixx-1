require 'csv'
def banner
  puts "Welcome to FOOD HUB!"
end
class String
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
  def capitalize_each!
    replace capitalize_each
  end
end
def create_account
  puts "Please enter the following: "
  print "Full Name: "
  name = gets.chomp.capitalize_each
  print "Contact number: "
  contact_number = gets.chomp.to_i
  print "Email: "
  email = gets.chomp.downcase
  print "Load: "
  money = gets.chomp.to_f
  puts "WELCOME, #{name}! Now you can buy using your FoodHub card! Thank you!"
  $mon = money
end

def shops
  puts <<PARAGRAPH
                WELCOME TO FOOD HUB!
            Please choose your Food Truck:
              ~ Truck A
              ~ Truck B
              ~ Truck C
              ~ Truck D
              ~ Truck E
              Just enter the letter.
PARAGRAPH
  shop = gets.chomp.downcase
end
def have_account
  puts "Do you already have a FoodHub Account? [y/n]"
  have = gets.chomp.downcase
end
def c
if have_account == 'n'
  create_account
  shops
else
  shops
end
