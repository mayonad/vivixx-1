counter  = 0

loop do
  counter += 1
  puts "Counter is : #{counter}"
  break if counter == 5
end

loop do
 puts "Type STOP to break the loop"
 input = gets.chomp
 break if input == "STOP"
 puts "Another round then!"
end
