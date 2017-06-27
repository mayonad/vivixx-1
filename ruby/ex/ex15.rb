def intro
   puts "Welcome to BPI!".center(100, '=')
   puts "Our system is now accessible.
   We would like to apologize for the inconvenience we have made over the past few days."
   puts " "
   puts "Please insert your ATM card. [Press 'i']"
   $ins = gets.chomp.downcase
 end

 def password
   require 'io/console'
   puts "Please enter your 4-digit password."
   puts "Shield the screen and keyboard so anyone waiting to use the ATM cannot see you enter your PIN or transaction amount."
   $pass = STDIN.noecho(&:gets).chomp
 end

 def withdraw
   puts "Please enter the amount: "
   $cash = gets.chomp.to_f
   puts "Please get your P#{$cash}. Thank You!"
 end

 def balance
   puts "Savings or Current?"
   $acc = gets.chomp.downcase
   if $acc=='savings' || $acc=='Savings'
     puts "You have P5689.85 remaining balance."
   else $acc=='current' || $acc=='Current'
   end
 end

 def transfer
   puts "Merchant/Company Name: "
   $comp = gets.chomp.upcase
   puts "Amount: "
   $amt = gets.chomp.to_f
   puts "Success! P#{$amt} had been transferred to #{$comp}?"
 end

 def service
   puts "Choices: "
   puts "1 withdraw"
   puts "2 Check balance"
   puts "3 Funds Transfer"
   puts "What would you like to do?[Enter the number]"
   $choice = gets.chomp.to_i
 end

intro
password
service
 while $ins == "i"
     case $choice
     when 1
       withdraw
       puts "Would you like to have another transaction? [y/n]"
       sss = gets.chomp.downcase
       if sss=='y'
         service
       else
         break
       end
     when 2
       balance
       puts "Would you like to have another transaction? [y/n]"
       sss = gets.chomp.downcase
       if sss=='y'
         service
       else
         break
       end
     when 3
       transfer
       puts "Would you like to have another transaction? [y/n]"
       sss = gets.chomp.downcase
       if sss=='y'
         service
       else
         break
       end
     end
   end
