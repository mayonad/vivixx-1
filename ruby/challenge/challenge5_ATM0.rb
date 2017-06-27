#================
#繰り返し
#num = 0
#while i < 3 do
# ***繰り返したい式***
#  num += 1
#end
#================
system 'cls'

def banner
  puts " "
end

puts "Welcome to BPI".center(40, '*')
banner

puts "Insert your card?"
chosen = gets.chomp

class Personal
  attr_accessor :name, :email, :account, :adress, :contact

  def initialize(name, email, account, adress, contact)
    @name = name
    @email = email
    @account = account
    @adress = adress
    @contact = contact
  end
end

info = Personal.new("mika", "mikako00124", 123456, "Tokyo" , 1111)
puts "Hi,#{info.name}!Here is your information!"
puts "Email: #{info.email}"
puts "Account: #{info.account}"
puts "Adress: #{info.adress}"
puts "Contact: #{info.contact}"

banner

def password

require "io/console"
print "Password: "
input = STDIN.noecho &:gets
print "\n"

puts "Entered => #{input}"

  puts "Please enter your 4-digit password."
  puts "Shield the screen and keyboard so anyone waiting to use the ATM cannot see you enter your PIN or transaction amount."
  $pass = STDIN.noecho(&:gets).chomp
end

password

system 'cls'
puts "SELECT TRANSACTION"
puts ""
TRANSACTION = [
  {number:"1", name: "WITHDRAWAL "},
  {number:"2", name: "TRANSFER   "},
  {number:"3", name: "BALANCE    "}
]


puts '=' * 48
TRANSACTION.each do |info|
  puts  " #{info[:number]},#{info[:name]}"
end

puts '=' * 48
puts ""
puts "*Please enter a number*"
puts ""
chosen = gets.chomp.to_i
puts ""
system 'cls'

if chosen == 1
puts "*SELECT SOURCE ACCOUNT*"
puts ""
ACCOUNT = [
  {number:"1", name: "CREDIT  "},
  {number:"2", name: "SAVINGS "},
  {number:"3", name: "CHECKING"}
]
puts '=' * 48
ACCOUNT.each do |info|
  puts  " #{info[:number]},#{info[:name]}"
end

puts '=' * 48
chosen = gets.chomp.to_i
puts ""
puts "How much do you want to get?"
AMOUNT = gets.chomp.to_i
TOTAL_AMOUNT = 100000

  if AMOUNT <= 100000
    puts '=' * 48
    puts "You can get P#{AMOUNT}"
    puts "Your Balance is P#{TOTAL_AMOUNT - AMOUNT}"
    puts '=' * 48
    puts "Would you like to get a receipt?"
    chosen = gets.chomp
    puts "Your transaction is complete.Thank you."
  elsif AMOUNT > 100000
    puts "Sorry,Your account is overdraw..."
  end
end
if chosen == 2
  puts "Merchant/Company Name: "
  $comp = gets.chomp.upcase
  puts "Amount: "
  $amt = gets.chomp.to_i
    if $amt <= $mon
      puts "Success! P#{$amt} had been transferred to #{$comp}"
      $mon = $mon - $amt
    else
      puts "You don't have enough balance to perform this transaction. Please try again."
    end
  end
