
 def menu
   puts  "\n=== MENU ==="
   puts "1, Exit"
   puts "2, print japanese haiku"
end

  loop do
    menu
    command  = gets.chomp

    case command
    when "1"
       puts "\nGood bye\n"
       break
   when  "2"
       puts "=" * 15
       puts "fru ike ya"
       puts "kawazu tobikomu"
       puts "mizu no oto\n"
       #\n 改行　

     else
       puts "wrong command!"
   end
  end
